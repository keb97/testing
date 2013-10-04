require 'spec_helper'

describe "company_profiles/index" do
  before(:each) do
    assign(:company_profiles, [
      stub_model(CompanyProfile,
        :name => "Name",
        :description => "Description",
        :photo => ""
      ),
      stub_model(CompanyProfile,
        :name => "Name",
        :description => "Description",
        :photo => ""
      )
    ])
  end

  it "renders a list of company_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
