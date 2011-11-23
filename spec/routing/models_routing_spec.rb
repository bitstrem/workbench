require "spec_helper"

describe ModelsController do
  describe "routing" do

    it "routes to #index" do
      get("/models").should route_to("models#index")
    end

    it "routes to #new" do
      get("/models/new").should route_to("models#new")
    end

    it "routes to #show" do
      get("/models/1").should route_to("models#show", :id => "1")
    end

    it "routes to #edit" do
      get("/models/1/edit").should route_to("models#edit", :id => "1")
    end

    it "routes to #create" do
      post("/models").should route_to("models#create")
    end

    it "routes to #update" do
      put("/models/1").should route_to("models#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/models/1").should route_to("models#destroy", :id => "1")
    end

  end
end
