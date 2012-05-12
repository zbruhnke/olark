class AddOlarkIdAndVisitorIdToChats < ActiveRecord::Migration
  def change
    add_column :chats, :olark_id, :string
    add_column :chats, :visitor_id, :string
  end
end
