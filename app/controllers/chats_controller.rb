class ChatsController < ApplicationController

  def create
    @chat = Chat.new_from_json(params)

    respond_to do |format|
      if @chat.save
        flash[:notice] = 'Chat was successfully created.'
        format.json { render json: @chat, status: :created }
      else
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def index
    @chat = Chat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chat }
    @title = @chat.name
    end
  end 
end