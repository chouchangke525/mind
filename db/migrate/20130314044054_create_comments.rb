class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commenting_id
      t.integer :commentted_id
      t.text :comment_word

      t.timestamps
    end
  end
end
