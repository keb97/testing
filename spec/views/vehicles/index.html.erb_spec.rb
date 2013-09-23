require 'spec_helper'

describe "vehicles/index" do
  before(:each) do
    assign(:vehicles, [
      stub_model(Vehicle,
        :make => "Make",
        :v_type => "V Type",
        :year => "Year",
        :color => "Color"
      ),
      stub_model(Vehicle,
        :make => "Make",
        :v_type => "V Type",
        :year => "Year",
        :color => "Color"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "V Type".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
