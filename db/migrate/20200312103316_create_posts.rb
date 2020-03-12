class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :impression, null: false
      t.string :image
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
