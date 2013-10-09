class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :PickupAddress
      t.string :DropoffAddress
      t.date :PickupDate
      t.time :PickupTime
      t.date :DropoffDate
      t.time :DropoffTime

      t.timestamps
    end
  end
end
