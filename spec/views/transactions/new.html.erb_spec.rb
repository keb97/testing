require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :PickupAddress => "MyString",
      :DropoffAddress => "MyString"
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "input#transaction_PickupAddress[name=?]", "transaction[PickupAddress]"
      assert_select "input#transaction_DropoffAddress[name=?]", "transaction[DropoffAddress]"
    end
  end
end
