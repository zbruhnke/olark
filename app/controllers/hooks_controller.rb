class HooksController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    data = ActiveSupport::JSON.decode(request.body.to_json)
    render nothing: true, status: 200
  end
end