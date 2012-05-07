class HooksController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    data = JSON.parse(request.body.read)
    render nothing: true, status: 200
  end
end