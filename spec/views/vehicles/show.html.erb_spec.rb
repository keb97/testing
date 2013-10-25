require 'spec_helper'

describe "vehicles/show" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :make => "Make",
      :kind => "V Type",
      :year => "Year",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Make/)
    rendered.should match(/V Type/)
    rendered.should match(/Year/)
    rendered.should match(/Color/)
  end
end
