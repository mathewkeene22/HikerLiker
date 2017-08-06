class CreateHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :hikes do |t|
      t.string :name
      t.date :date
      t.float :miles
      t.integer :elevation
      t.integer :rating

      t.timestamps
    end
  end
end
