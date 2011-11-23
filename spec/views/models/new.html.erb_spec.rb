require 'spec_helper'

describe "models/new.html.erb" do
  before(:each) do
    assign(:model, stub_model(Model,
      :model_num => "MyString",
      :type_id => 1,
      :brand_id => 1,
      :archive => false
    ).as_new_record)
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => models_path, :method => "post" do
      assert_select "input#model_model_num", :name => "model[model_num]"
      assert_select "input#model_type_id", :name => "model[type_id]"
      assert_select "input#model_brand_id", :name => "model[brand_id]"
      assert_select "input#model_archive", :name => "model[archive]"
    end
  end
end
