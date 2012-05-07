class CreateWebhooks < ActiveRecord::Migration
  def change
    create_table :webhooks do |t|
      t.string :serialize

      t.timestamps
    end
  end
end
