require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :pickup_address => "MyString",
      :dropoff_address => "MyString"
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "input#transaction_pickup_address[name=?]", "transaction[pickup_address]"
      assert_select "input#transaction_dropoff_address[name=?]", "transaction[dropoff_address]"
    end
  end
end
