class HooksController < ApplicationController
require 'json'

  def post '/' do
    push = JSON.parse(params[:payload])
    "I got some JSON: #{push.inspect}"
  end
end