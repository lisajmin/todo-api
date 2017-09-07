class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.references :list
      t.boolean :completed

      t.timestamps
    end
  end
end
