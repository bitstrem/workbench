require 'spec_helper'

describe "types/edit.html.erb" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :size => "MyString",
      :description => "MyString",
      :archive => false
    ))
  end

  it "renders the edit type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => types_path(@type), :method => "post" do
      assert_select "input#type_size", :name => "type[size]"
      assert_select "input#type_description", :name => "type[description]"
      assert_select "input#type_archive", :name => "type[archive]"
    end
  end
end
