require "spec_helper"

describe BlockListServersController do
  describe "routing" do

    it "routes to #index" do
      get("/block_list_servers").should route_to("block_list_servers#index")
    end

    it "routes to #new" do
      get("/block_list_servers/new").should route_to("block_list_servers#new")
    end

    it "routes to #show" do
      get("/block_list_servers/1").should route_to("block_list_servers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/block_list_servers/1/edit").should route_to("block_list_servers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/block_list_servers").should route_to("block_list_servers#create")
    end

    it "routes to #update" do
      put("/block_list_servers/1").should route_to("block_list_servers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/block_list_servers/1").should route_to("block_list_servers#destroy", :id => "1")
    end

  end
end
