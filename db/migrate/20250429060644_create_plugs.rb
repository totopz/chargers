class CreatePlugs < ActiveRecord::Migration[8.0]
  def change
    create_table :plugs do |t|
      t.references :charger, null: false, foreign_key: true
      t.references :plug_type, null: false, foreign_key: true
      t.integer :speed

      t.timestamps
    end
  end
end
