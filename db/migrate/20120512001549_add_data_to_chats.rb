class AddDataToChats < ActiveRecord::Migration
  def change
    add_column :chats, :data, :string
  end
end
