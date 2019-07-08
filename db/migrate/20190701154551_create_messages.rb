class CreateMessages < ActiveRecord::Migration[5.1]
  create_table :messages do |t|
    t.text :content
    t.text :color_hex
    t.timestamps
  end
end
