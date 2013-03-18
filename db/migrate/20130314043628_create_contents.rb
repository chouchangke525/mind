class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :mind
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
