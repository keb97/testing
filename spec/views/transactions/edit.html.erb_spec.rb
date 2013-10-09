require 'spec_helper'

describe "transactions/edit" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :PickupAddress => "MyString",
      :DropoffAddress => "MyString"
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do
      assert_select "input#transaction_PickupAddress[name=?]", "transaction[PickupAddress]"
      assert_select "input#transaction_DropoffAddress[name=?]", "transaction[DropoffAddress]"
    end
  end
end
