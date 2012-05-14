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
    @chats = Chat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chats }
    end
  end
  
  def show
    @chat = Chat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chat }
    end
  end
  
end