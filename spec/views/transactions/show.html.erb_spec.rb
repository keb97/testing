require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :PickupAddress => "Pickup Address",
      :DropoffAddress => "Dropoff Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pickup Address/)
    rendered.should match(/Dropoff Address/)
  end
end
