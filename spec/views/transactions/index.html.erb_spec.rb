require 'spec_helper'

describe "transactions/index" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :pickup_address => "Pickup Address",
        :dropoff_address => "Dropoff Address"
      ),
      stub_model(Transaction,
        :pickup_address => "Pickup Address",
        :dropoff_address => "Dropoff Address"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pickup Address".to_s, :count => 2
    assert_select "tr>td", :text => "Dropoff Address".to_s, :count => 2
  end
end
