class AddCompanyProfileIdToCompanyUsers < ActiveRecord::Migration
  def change
    add_column	:company_users, :company_profile_id, :integer
    add_index		:company_users, :company_profile_id
  end
end
