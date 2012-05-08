class Chat < ActiveRecord::Base
  attr_accessible :browser, :city, :country, :country_code, :email_address, :fullname, :id, :ip, :kind, :operating_system, :organization, :region
end
