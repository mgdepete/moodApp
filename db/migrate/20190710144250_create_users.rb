class CreateUsers < ActiveRecord::Migration[5.1]
    create_table :users do |t|
      t.text :name
      t.text :email
      t.timestamps
    end
end
