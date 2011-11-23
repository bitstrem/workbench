require "spec_helper"

describe PartCompaniesController do
  describe "routing" do

    it "routes to #index" do
      get("/part_companies").should route_to("part_companies#index")
    end

    it "routes to #new" do
      get("/part_companies/new").should route_to("part_companies#new")
    end

    it "routes to #show" do
      get("/part_companies/1").should route_to("part_companies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/part_companies/1/edit").should route_to("part_companies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/part_companies").should route_to("part_companies#create")
    end

    it "routes to #update" do
      put("/part_companies/1").should route_to("part_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/part_companies/1").should route_to("part_companies#destroy", :id => "1")
    end

  end
end
