class BlockListServer < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :queries
  validates_presence_of :name, :url
  validates :url, :format => { :with => URI::regexp(%w(http https)), :message => "Must be a valid IP address with scheme"}

  def query_string(mailserver_ip)
    # validate target_ip
    uri = URI.parse(mailserver_ip)
    reversed_octets = mailserver_ip.split('.').reverse
    "#{[reversed_octets, uri.host].join(".")}"
  end

end
