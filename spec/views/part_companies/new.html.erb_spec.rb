require 'spec_helper'

describe "part_companies/new.html.erb" do
  before(:each) do
    assign(:part_company, stub_model(PartCompany,
      :name => "MyString",
      :address => "MyString",
      :archive => false
    ).as_new_record)
  end

  it "renders new part_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => part_companies_path, :method => "post" do
      assert_select "input#part_company_name", :name => "part_company[name]"
      assert_select "input#part_company_address", :name => "part_company[address]"
      assert_select "input#part_company_archive", :name => "part_company[archive]"
    end
  end
end
