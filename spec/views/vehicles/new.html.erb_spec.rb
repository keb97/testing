require 'spec_helper'

describe "vehicles/new" do
  before(:each) do
    assign(:vehicle, stub_model(Vehicle,
      :make => "MyString",
      :v_type => "MyString",
      :year => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vehicles_path, "post" do
      assert_select "input#vehicle_make[name=?]", "vehicle[make]"
      assert_select "input#vehicle_v_type[name=?]", "vehicle[v_type]"
      assert_select "input#vehicle_year[name=?]", "vehicle[year]"
      assert_select "input#vehicle_color[name=?]", "vehicle[color]"
    end
  end
end