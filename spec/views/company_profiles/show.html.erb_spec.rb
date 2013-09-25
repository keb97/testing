require 'spec_helper'

describe "company_profiles/show" do
  before(:each) do
    @company_profile = assign(:company_profile, stub_model(CompanyProfile,
      :description => "MyText",
      :photo => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
