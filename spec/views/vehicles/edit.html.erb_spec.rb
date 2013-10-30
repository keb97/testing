require 'spec_helper'

describe "vehicles/edit" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :make => "MyString",
      :kind => "MyString",
      :year => "MyString",
      :color => "MyString"
    ))
    controller.stub(current_admin: FactoryGirl.create(:admin,
      :email => "person@example.com", 
      :password => "password123",
      :password_confirmation => "password123"
    ))
    controller.stub(current_company_user: FactoryGirl.create(:company_user, 
      :email => "person2@example.com", 
      :password => "password1123", 
      :password_confirmation => "password1123"
    ))
  end

  it "renders the edit vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do
      assert_select "input#vehicle_make[name=?]", "vehicle[make]"
      assert_select "input#vehicle_kind[name=?]", "vehicle[kind]"
      assert_select "input#vehicle_year[name=?]", "vehicle[year]"
      assert_select "input#vehicle_color[name=?]", "vehicle[color]"
    end
  end
end
