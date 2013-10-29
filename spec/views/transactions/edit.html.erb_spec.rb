require 'spec_helper'

describe "transactions/edit" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :pickup_address => "MyString",
      :dropoff_address => "MyString"
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do
      assert_select "input#transaction_pickup_address[name=?]", "transaction[pickup_address]"
      assert_select "input#transaction_dropoff_address[name=?]", "transaction[dropoff_address]"
    end
  end
end
