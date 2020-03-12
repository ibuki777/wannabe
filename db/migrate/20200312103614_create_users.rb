class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name,               null: false, unique: true
      t.string :encrypted_password, null: false, default: ""
      t.timestamps
    end
  end
end
