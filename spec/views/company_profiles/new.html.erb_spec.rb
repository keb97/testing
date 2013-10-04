require 'spec_helper'

describe "company_profiles/new" do
  before(:each) do
    assign(:company_profile, stub_model(CompanyProfile,
      :name => "MyText",
      :description => "MyText",
      :photo => ""
    ).as_new_record)
  end

  it "renders new company_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_profiles_path, "post" do
      assert_select "input#company_profile_name[name=?]", "company_profile[name]"
      assert_select "textarea#company_profile_description[name=?]", "company_profile[description]"
      assert_select "input#company_profile_photo[name=?]", "company_profile[photo]"
    end
  end
end
