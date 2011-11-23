require 'spec_helper'

describe "parts/show.html.erb" do
  before(:each) do
    @part = assign(:part, stub_model(Part,
      :part_number => "Part Number",
      :cost => "9.99",
      :part_company_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
