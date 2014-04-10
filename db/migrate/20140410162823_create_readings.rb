class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.float :sugar_level

      t.timestamps
    end
  end
end
