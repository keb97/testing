class CreateLocatables < ActiveRecord::Migration
  def change
    create_table :locatables do |t|
      t.references :owner, index: true, polymorphic: true
      t.references :address, index: true

      t.timestamps
    end
  end
end
