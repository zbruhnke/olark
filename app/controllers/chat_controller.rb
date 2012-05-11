class ChatController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    @chat = Chat.new({:browser => params[:broswer], :city => params[:city], :country => params[:country], :fullname => params[:fullname], :id => params[:id], :ip => params[:ip], :kind => params[:kind], :operating_system => params[:operating_system], :organization => params[:organization], :region => params[:region] })

    respond_to do |format|
      if @chat.save
        flash[:notice] = 'Chat was successfully created.'
        render nothing: true, status: 200
      else
        format.json  { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end
end