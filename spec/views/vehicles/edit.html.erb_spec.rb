require 'spec_helper'

describe "vehicles/edit" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :make => "MyString",
      :v_type => "MyString",
      :year => "MyString",
      :color => "MyString"
    ))
    @admin = assign(:admin, stub_model(Admin,
        :make => "MyString",
        :v_type => "MyString",
        :year => "MyString",
        :color => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do
      assert_select "input#vehicle_make[name=?]", "vehicle[make]"
      assert_select "input#vehicle_v_type[name=?]", "vehicle[v_type]"
      assert_select "input#vehicle_year[name=?]", "vehicle[year]"
      assert_select "input#vehicle_color[name=?]", "vehicle[color]"
    end
  end
end
