class Chat < ActiveRecord::Base
  attr_accessible :browser, :city, :country, :country_code, :email_address, :fullname, :olark_id, :visitor_id, :ip, :kind, :operating_system, :organization, :region, :data

  def self.new_from_json(params)
    new({
          kind: params[:kind],
          visitor_id: params[:visitor_id],
          fullname: params['fullName'],
          email_address: params['emailAddress'],
          city: params[:city],
          region: params[:region],
          country: params[:country],
          country_code: params['countryCode'],
          organization: params[:organization],
          ip: params[:ip],
          browser: params[:browser],
          operating_system: params['operatingSystem'],
        })
  end
end

