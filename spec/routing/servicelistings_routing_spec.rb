require "spec_helper"

describe ServicelistingsController do
  describe "routing" do

    it "routes to #index" do
      get("/servicelistings").should route_to("servicelistings#index")
    end

    it "routes to #new" do
      get("/servicelistings/new").should route_to("servicelistings#new")
    end

    it "routes to #show" do
      get("/servicelistings/1").should route_to("servicelistings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/servicelistings/1/edit").should route_to("servicelistings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/servicelistings").should route_to("servicelistings#create")
    end

    it "routes to #update" do
      put("/servicelistings/1").should route_to("servicelistings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/servicelistings/1").should route_to("servicelistings#destroy", :id => "1")
    end

  end
end
