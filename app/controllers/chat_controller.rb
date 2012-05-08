class ChatController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    @chat = Chat.new.from_json(params[:chat].to_json)
    #@chat = Chat.new(:name => params[:chat][:name])
    respond_to do |format|
      if @chat.save
        render nothing: true, status: 200
      else
        format.json  { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end
end