class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :v_type
      t.string :year
      t.string :color

      t.timestamps
    end
  end
end
