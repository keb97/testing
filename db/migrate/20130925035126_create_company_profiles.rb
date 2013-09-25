class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.text :description
      t.binary :photo

      t.timestamps
    end
  end
end
