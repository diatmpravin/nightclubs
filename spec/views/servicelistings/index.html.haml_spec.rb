require 'spec_helper'

describe "servicelistings/index" do
  before(:each) do
    assign(:servicelistings, [
      stub_model(Servicelisting,
        :title => "Title",
        :description => "MyText",
        :buyPirce => 1,
        :minBidPrice => 1,
        :noOfGuest => 1,
        :status => 1,
        :hightestBid => 1
      ),
      stub_model(Servicelisting,
        :title => "Title",
        :description => "MyText",
        :buyPirce => 1,
        :minBidPrice => 1,
        :noOfGuest => 1,
        :status => 1,
        :hightestBid => 1
      )
    ])
  end

  it "renders a list of servicelistings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
