require 'spec_helper'

describe "servicelistings/new" do
  before(:each) do
    assign(:servicelisting, stub_model(Servicelisting,
      :title => "MyString",
      :description => "MyText",
      :buyPirce => 1,
      :minBidPrice => 1,
      :noOfGuest => 1,
      :status => 1,
      :hightestBid => 1
    ).as_new_record)
  end

  it "renders new servicelisting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servicelistings_path, :method => "post" do
      assert_select "input#servicelisting_title", :name => "servicelisting[title]"
      assert_select "textarea#servicelisting_description", :name => "servicelisting[description]"
      assert_select "input#servicelisting_buyPirce", :name => "servicelisting[buyPirce]"
      assert_select "input#servicelisting_minBidPrice", :name => "servicelisting[minBidPrice]"
      assert_select "input#servicelisting_noOfGuest", :name => "servicelisting[noOfGuest]"
      assert_select "input#servicelisting_status", :name => "servicelisting[status]"
      assert_select "input#servicelisting_hightestBid", :name => "servicelisting[hightestBid]"
    end
  end
end
