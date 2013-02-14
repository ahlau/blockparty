require 'spec_helper'

describe "mail_servers/new" do
  before(:each) do
    assign(:mail_server, stub_model(MailServer,
      :name => "",
      :ip => "",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new mail_server form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mail_servers_path, :method => "post" do
      assert_select "input#mail_server_name", :name => "mail_server[name]"
      assert_select "input#mail_server_ip", :name => "mail_server[ip]"
      assert_select "textarea#mail_server_description", :name => "mail_server[description]"
    end
  end
end
