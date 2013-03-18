class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.date :date_of_birth
      t.string :hobby
      t.string :occupation

      t.timestamps
    end
  end
end
