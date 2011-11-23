require 'spec_helper'

describe "types/show.html.erb" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :size => "Size",
      :description => "Description",
      :archive => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Size/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
