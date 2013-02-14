require "spec_helper"

describe MailServersController do
  describe "routing" do

    it "routes to #index" do
      get("/mail_servers").should route_to("mail_servers#index")
    end

    it "routes to #new" do
      get("/mail_servers/new").should route_to("mail_servers#new")
    end

    it "routes to #show" do
      get("/mail_servers/1").should route_to("mail_servers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mail_servers/1/edit").should route_to("mail_servers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mail_servers").should route_to("mail_servers#create")
    end

    it "routes to #update" do
      put("/mail_servers/1").should route_to("mail_servers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mail_servers/1").should route_to("mail_servers#destroy", :id => "1")
    end

  end
end
