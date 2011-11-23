require 'spec_helper'

describe "models/show.html.erb" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :model_num => "Model Num",
      :type_id => 1,
      :brand_id => 1,
      :archive => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model Num/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
