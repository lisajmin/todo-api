class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :private
      t.references :user

      t.timestamps
    end
  end
end
