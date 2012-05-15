class Chat < ActiveRecord::Base
  attr_accessible :browser, :city, :country, :country_code, :email_address, :fullname, :olark_id, :visitor_id, :ip, :kind, :operating_system, :organization, :region, :data
  has_many :visitor
     accepts_nested_attributes_for :visitor, :allow_destroy => true
  def self.new_from_json(params)
    new({
          kind: params[:visitor][:kind],
          visitor_id: params[:visitor][:visitor_id],
          fullname: params[:visitor]['fullName'],
          email_address: params[:visitor]['emailAddress'],
          city: params[:visitor][:city],
          region: params[:visitor][:region],
          country: params[:visitor][:country],
          country_code: params[:visitor]['countryCode'],
          organization: params[:visitor][:organization],
          ip: params[:visitor][:ip],
          browser: params[:visitor][:browser],
          operating_system: params[:visitor]['operatingSystem'],
        })
  end
end

