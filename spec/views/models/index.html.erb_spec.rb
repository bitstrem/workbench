require 'spec_helper'

describe "models/index.html.erb" do
  before(:each) do
    assign(:models, [
      stub_model(Model,
        :model_num => "Model Num",
        :type_id => 1,
        :brand_id => 1,
        :archive => false
      ),
      stub_model(Model,
        :model_num => "Model Num",
        :type_id => 1,
        :brand_id => 1,
        :archive => false
      )
    ])
  end

  it "renders a list of models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model Num".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
