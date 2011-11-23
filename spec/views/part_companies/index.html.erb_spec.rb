require 'spec_helper'

describe "part_companies/index.html.erb" do
  before(:each) do
    assign(:part_companies, [
      stub_model(PartCompany,
        :name => "Name",
        :address => "Address",
        :archive => false
      ),
      stub_model(PartCompany,
        :name => "Name",
        :address => "Address",
        :archive => false
      )
    ])
  end

  it "renders a list of part_companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
