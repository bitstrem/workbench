require 'spec_helper'

describe "brands/new.html.erb" do
  before(:each) do
    assign(:brand, stub_model(Brand,
      :brand => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new brand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brands_path, :method => "post" do
      assert_select "input#brand_brand", :name => "brand[brand]"
      assert_select "input#brand_address", :name => "brand[address]"
    end
  end
end
