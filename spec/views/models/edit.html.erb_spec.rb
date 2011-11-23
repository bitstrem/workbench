require 'spec_helper'

describe "models/edit.html.erb" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :model_num => "MyString",
      :type_id => 1,
      :brand_id => 1,
      :archive => false
    ))
  end

  it "renders the edit model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => models_path(@model), :method => "post" do
      assert_select "input#model_model_num", :name => "model[model_num]"
      assert_select "input#model_type_id", :name => "model[type_id]"
      assert_select "input#model_brand_id", :name => "model[brand_id]"
      assert_select "input#model_archive", :name => "model[archive]"
    end
  end
end
