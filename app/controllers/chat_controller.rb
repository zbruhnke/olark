class ChatController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    @chat = Chat.new(params[:kind])
    render nothing: true, status: 200
    print 'it worked!'
  end
end