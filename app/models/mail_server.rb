class MailServer < ActiveRecord::Base
  attr_accessible :description, :ip, :name
  validates :ip, :format => { :with => /[\d]+.[\d]+.[\d]+.[\d]+/, :message => "Must be an IP address (no scheme)"}
  has_many :queries
end
