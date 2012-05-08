class HooksController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    data = JSON.parse(request.body.read)
    @webhook.object = params[:webhook]
    @webhook.save
    render nothing: true, status: 200
  end
end