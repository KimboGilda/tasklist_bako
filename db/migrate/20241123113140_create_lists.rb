class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.text :title

      t.timestamps
    end
  end
end
