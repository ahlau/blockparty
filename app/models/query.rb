
class Query < ActiveRecord::Base
  attr_accessible :url, :mail_server_id, :block_list_server_id
  belongs_to :mail_server
  belongs_to :block_list_server
  has_many :query_results
  def perform
    result = query_results.create(:code => QueryResult::INIT)
    result.code = QueryResult::INIT
    result.save
    start_time = Time.now
    q = Dnsruby::Resolver.new
    # throws an exception
    response = nil
    begin
      puts "query #{block_list_server.query_string(mail_server.ip)}" 
      response = q.query( block_list_server.query_string(mail_server.ip), Dnsruby::Types.A)
      if (response.answer != nil && response.answer.to_s.match(/127\.0\.0\.2/))
        puts "query response: #{response.answer.to_s}"
        result.code = QueryResult::LISTED
        result.response = response.answer.to_s
      else
        result.code = QueryResult::NOT_LISTED
      end
    rescue Dnsruby::ResolvError
      # if NXDOMAIN (not listed)
      puts "not listed"
      result.code = QueryResult::NOT_LISTED
    rescue Dnsruby::ResolvTimeout
      # if Timeout error
      puts "timeout"
      result.code = QueryResult::TIMEOUT
    end
    end_time = Time.now

    # save
    result.start_time= start_time
    result.end_time = end_time
    result.save
  end

  def self.query_all_servers
    counter = 0
    MailServer.all.each do |mail_server|
      BlockListServer.all.each do |block_list_server|
        query = self.create(mail_server_id: mail_server.id, block_list_server_id: block_list_server.id)
        query.send_later(:perform)
        counter += 1
      end
    end
    counter
  end

end
