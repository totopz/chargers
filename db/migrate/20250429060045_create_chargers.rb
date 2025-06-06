class CreateChargers < ActiveRecord::Migration[8.0]
  def change
    create_table :chargers do |t|
      t.references :location, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
