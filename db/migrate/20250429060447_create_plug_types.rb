class CreatePlugTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :plug_types do |t|
      t.string :name
      t.boolean :is_dc

      t.timestamps
    end
  end
end
