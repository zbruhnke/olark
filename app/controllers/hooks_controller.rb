class HooksController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    data = JSON.parse(json)
    render nothing: true, status: 200
  end
end