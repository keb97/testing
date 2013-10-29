class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
    	t.string		:name
      t.text			:description
      t.attachment		:photo

      t.timestamps
    end
  end
end
