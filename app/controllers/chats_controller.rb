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
  
  def update
    @chat = Chat.find(params[:id])

    respond_to do |format|
      if @chat.update_attributes(params[:chat])
        format.html { redirect_to @chat, notice: 'chat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chats/1
  # DELETE /chats/1.json
  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy

    respond_to do |format|
      format.html { redirect_to chats_url }
      format.json { head :no_content }
    end
  end
  
  def edit
    @chat = Chat.find(params[:id])
  end
end