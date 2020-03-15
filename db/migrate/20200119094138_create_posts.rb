class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title,        null: false, default: ""
      t.text :content
      t.integer :status,      null: false, default: 0
      t.string :title_image,
      t.timestamps
    end
  end
end
