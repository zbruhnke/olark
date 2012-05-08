class HooksController < ApplicationController
require 'json'

  def create
    Rails.logger.info "I got some JSON: #{params}"
    data = JSON.parse(params)
    @chat = Chat.new(params[:kind]),
              :id =>  params[:id], 
              :fullname => params[:fullname],
              :emailAddress => params[:emailAddress],
              :city => params[:city],
              :region => params[:region],
              :country => params[:country],
              :countryCode => params[:countrycode],
              :organization => params[:organization],
              :ip => params[:ip],
              :browser params[:browser],
              :operatingSystem => [:operatingSystem],
    render nothing: true, status: 200
  end
end