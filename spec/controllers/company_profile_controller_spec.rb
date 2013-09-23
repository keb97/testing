require 'spec_helper'

describe CompanyProfileController do

  describe "GET 'company_profiles'" do
    it "returns http success" do
      get 'company_profiles'
      response.should be_success
    end
  end

end
