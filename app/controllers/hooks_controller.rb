class HooksController < ApplicationController
require 'json'

  post '/' do
    push = JSON.parse(params[:payload])
    "I got some JSON: #{push.inspect}"
  end
end