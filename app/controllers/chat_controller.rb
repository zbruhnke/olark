class ChatController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    @chat = Chat.new(params[:kind])
    render nothing: true, status: 200
    respond_to do |format|
      if @chat.save
        format.html { redirect_to(@chat, :notice => 'Chat was successfully saved.') }
        format.xml  { render :xml => @chat, :status => :created, :location => @chat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chat.errors, :status => :unprocessable_entity }
      end
    end
  end
end