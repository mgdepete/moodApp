class CreateMessages < ActiveRecord::Migration[5.1]
  create_table :messages do |t|
    t.text :content
    t.text :color_hex
    t.references :user, foreign_key: true
    t.timestamps
  end
  add_index :messages, [:user_id, :created_at]
end
