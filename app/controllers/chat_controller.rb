class ChatController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    @chat = Chat.new(params[:kind])
    render nothing: true, status: 200
  end
  
  def show
    @chat = Chat.find(params[:kind])

    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
end