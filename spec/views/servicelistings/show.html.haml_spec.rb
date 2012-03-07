require 'spec_helper'

describe "servicelistings/show" do
  before(:each) do
    @servicelisting = assign(:servicelisting, stub_model(Servicelisting,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
