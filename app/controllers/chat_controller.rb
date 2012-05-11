class ChatController < ApplicationController
require 'json'

  def create
    @chat = JSON.parse({
      kind: 'conversation',
      id: 'EV695BI2930A6XMO32886MPT899443414',
      items: [
        {kind: 'MessageToVisitor', nickname: "John", timestamp: "1307116657.1", body: "Hi there. Need any help?"},
        {kind: 'MessageToOperator', nickname: "Bob", timestamp: "1307116661.25", body: "Yes, please help me with billing."}
      ],
      visitor: {
        kind: 'Visitor',
        id: '9QRF9YWM5XW3ZSU7P9CGWRU89944341',
        fullName: "John Doe",
        emailAddress: "foo@example.com",
        city: "Palo Alto",
        region: "CA",
        country: "United State",
        countryCode: "US",
        organization: "Widgets Inc.",
        ip: "123.4.56.78",
        browser: "Chrome 12.1",
        operatingSystem: "Windows"
        customFields: {myInternalCustomerId: "12341234", favoriteColor: "blue"}
      }
    })
    
    respond_to do |format|
      if @chat.save
        flash[:notice] = 'Chat was successfully created.'
        render nothing: true, status: 200
      else
        format.json  { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def index
    @chat = Chat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chat }
    @title = @chat.name
    end
  end 
end