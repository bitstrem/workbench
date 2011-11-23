require 'spec_helper'

describe "brands/index.html.erb" do
  before(:each) do
    assign(:brands, [
      stub_model(Brand,
        :brand => "Brand",
        :address => "Address"
      ),
      stub_model(Brand,
        :brand => "Brand",
        :address => "Address"
      )
    ])
  end

  it "renders a list of brands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
