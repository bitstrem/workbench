require 'spec_helper'

describe "part_companies/show.html.erb" do
  before(:each) do
    @part_company = assign(:part_company, stub_model(PartCompany,
      :name => "Name",
      :address => "Address",
      :archive => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
