require 'spec_helper'

describe "parts/edit.html.erb" do
  before(:each) do
    @part = assign(:part, stub_model(Part,
      :part_number => "MyString",
      :cost => "9.99",
      :part_company_id => 1
    ))
  end

  it "renders the edit part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parts_path(@part), :method => "post" do
      assert_select "input#part_part_number", :name => "part[part_number]"
      assert_select "input#part_cost", :name => "part[cost]"
      assert_select "input#part_part_company_id", :name => "part[part_company_id]"
    end
  end
end
