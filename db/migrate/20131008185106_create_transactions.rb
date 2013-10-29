class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :pickup_address
      t.string :dropoff_address
      t.date :pickup_date
      t.time :pickup_time
      t.date :dropoff_date
      t.time :dropoff_time
      t.references :vehicle
      t.references :user, index: true
      t.references :company_profile, index: true
      
      t.timestamps
    end
  end
end
