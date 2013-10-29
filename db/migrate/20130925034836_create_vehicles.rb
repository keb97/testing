class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :kind
      t.string :year
      t.string :color
      t.attachment :image

      t.timestamps
    end
  end
end
