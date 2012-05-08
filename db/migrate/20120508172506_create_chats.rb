class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :kind
      t.string :id
      t.string :fullname
      t.string :email_address
      t.string :city
      t.string :region
      t.string :country
      t.string :country_code
      t.string :organization
      t.string :ip
      t.string :browser
      t.string :operating_system

      t.timestamps
    end
  end
end
