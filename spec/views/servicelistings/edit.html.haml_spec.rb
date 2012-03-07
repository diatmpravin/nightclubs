require 'spec_helper'

describe "servicelistings/edit" do
  before(:each) do
    @servicelisting = assign(:servicelisting, stub_model(Servicelisting,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit servicelisting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servicelistings_path(@servicelisting), :method => "post" do
      assert_select "input#servicelisting_name", :name => "servicelisting[name]"
      assert_select "textarea#servicelisting_description", :name => "servicelisting[description]"
    end
  end
end
