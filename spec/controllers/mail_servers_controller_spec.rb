require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MailServersController do

  # This should return the minimal set of attributes required to create a valid
  # MailServer. As you add validations to MailServer, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MailServersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all mail_servers as @mail_servers" do
      mail_server = MailServer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:mail_servers).should eq([mail_server])
    end
  end

  describe "GET show" do
    it "assigns the requested mail_server as @mail_server" do
      mail_server = MailServer.create! valid_attributes
      get :show, {:id => mail_server.to_param}, valid_session
      assigns(:mail_server).should eq(mail_server)
    end
  end

  describe "GET new" do
    it "assigns a new mail_server as @mail_server" do
      get :new, {}, valid_session
      assigns(:mail_server).should be_a_new(MailServer)
    end
  end

  describe "GET edit" do
    it "assigns the requested mail_server as @mail_server" do
      mail_server = MailServer.create! valid_attributes
      get :edit, {:id => mail_server.to_param}, valid_session
      assigns(:mail_server).should eq(mail_server)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MailServer" do
        expect {
          post :create, {:mail_server => valid_attributes}, valid_session
        }.to change(MailServer, :count).by(1)
      end

      it "assigns a newly created mail_server as @mail_server" do
        post :create, {:mail_server => valid_attributes}, valid_session
        assigns(:mail_server).should be_a(MailServer)
        assigns(:mail_server).should be_persisted
      end

      it "redirects to the created mail_server" do
        post :create, {:mail_server => valid_attributes}, valid_session
        response.should redirect_to(MailServer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mail_server as @mail_server" do
        # Trigger the behavior that occurs when invalid params are submitted
        MailServer.any_instance.stub(:save).and_return(false)
        post :create, {:mail_server => { "name" => "invalid value" }}, valid_session
        assigns(:mail_server).should be_a_new(MailServer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MailServer.any_instance.stub(:save).and_return(false)
        post :create, {:mail_server => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mail_server" do
        mail_server = MailServer.create! valid_attributes
        # Assuming there are no other mail_servers in the database, this
        # specifies that the MailServer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MailServer.any_instance.should_receive(:update_attributes).with({ "name" => "" })
        put :update, {:id => mail_server.to_param, :mail_server => { "name" => "" }}, valid_session
      end

      it "assigns the requested mail_server as @mail_server" do
        mail_server = MailServer.create! valid_attributes
        put :update, {:id => mail_server.to_param, :mail_server => valid_attributes}, valid_session
        assigns(:mail_server).should eq(mail_server)
      end

      it "redirects to the mail_server" do
        mail_server = MailServer.create! valid_attributes
        put :update, {:id => mail_server.to_param, :mail_server => valid_attributes}, valid_session
        response.should redirect_to(mail_server)
      end
    end

    describe "with invalid params" do
      it "assigns the mail_server as @mail_server" do
        mail_server = MailServer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MailServer.any_instance.stub(:save).and_return(false)
        put :update, {:id => mail_server.to_param, :mail_server => { "name" => "invalid value" }}, valid_session
        assigns(:mail_server).should eq(mail_server)
      end

      it "re-renders the 'edit' template" do
        mail_server = MailServer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MailServer.any_instance.stub(:save).and_return(false)
        put :update, {:id => mail_server.to_param, :mail_server => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mail_server" do
      mail_server = MailServer.create! valid_attributes
      expect {
        delete :destroy, {:id => mail_server.to_param}, valid_session
      }.to change(MailServer, :count).by(-1)
    end

    it "redirects to the mail_servers list" do
      mail_server = MailServer.create! valid_attributes
      delete :destroy, {:id => mail_server.to_param}, valid_session
      response.should redirect_to(mail_servers_url)
    end
  end

end
