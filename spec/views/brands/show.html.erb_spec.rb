require 'spec_helper'

describe "brands/show.html.erb" do
  before(:each) do
    @brand = assign(:brand, stub_model(Brand,
      :brand => "Brand",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brand/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
  end
end
