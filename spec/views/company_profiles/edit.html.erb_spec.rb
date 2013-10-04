require 'spec_helper'

describe "company_profiles/edit" do
  before(:each) do
    @company_profile = assign(:company_profile, stub_model(CompanyProfile,
      :name => "MyString",
      :description => "MyText",
      :photo => ""
    ))
  end

  it "renders the edit company_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_profile_path(@company_profile), "post" do
      assert_select "input#company_profile_name[name=?]", "company_profile[name]"
      assert_select "textarea#company_profile_description[name=?]", "company_profile[description]"
      assert_select "input#company_profile_photo[name=?]", "company_profile[photo]"
    end
  end
end
