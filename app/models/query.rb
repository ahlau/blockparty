
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
      response = q.query( block_list_server.query_string(mail_server.ip), Dnsruby::Types.A)
    rescue Dnsruby::ResolvError
      # if NXDOMAIN (not listed)
      result.code = QueryResult::NOT_LISTED
    rescue Dnsruby::ResolvTimeout
      # if Timeout error
      result.code = QueryResult::TIMEOUT
    end
    end_time = Time.now

    # save
    result.start_time= start_time
    result.end_time = end_time
    if (result.code == QueryResult::INIT) 
      
    end
    result.save
  end

end
