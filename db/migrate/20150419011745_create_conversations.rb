class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :sender, index: true
      t.references :recipient, index: true

      t.timestamps null: false
    end
    add_foreign_key :conversations, :senders
    add_foreign_key :conversations, :recipients
  end
end
