class AddCompanyProfileIdToVehicles < ActiveRecord::Migration
  def change
    add_column	:vehicles, :company_profile_id, :integer
    add_index		:vehicles, :company_profile_id
  end
end
