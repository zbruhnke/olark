class Chat < ActiveRecord::Base
  attr_accessible :browser, :city, :country, :country_code, :email_address, :fullname, :olark_id, :visitor_id, :ip, :kind, :operating_system, :organization, :region, :data

  def self.new_from_json params
    params[:visitor][:item_count] = params[:items].size
    params[:items] = nil
    new({
          kind: params[:kind],
          visitor_id: params[:visitor][:id],
          olark_id: params[:id],
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

