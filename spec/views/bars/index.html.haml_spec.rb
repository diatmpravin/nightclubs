require 'spec_helper'

describe "bars/index" do
  before(:each) do
    assign(:bars, [
      stub_model(Bar,
        :name => "Name",
        :owner => "Owner",
        :phone => "Phone",
        :city => "City",
        :website => "Website",
        :location => "MyText"
      ),
      stub_model(Bar,
        :name => "Name",
        :owner => "Owner",
        :phone => "Phone",
        :city => "City",
        :website => "Website",
        :location => "MyText"
      )
    ])
  end

  it "renders a list of bars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
