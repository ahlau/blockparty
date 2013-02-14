require 'spec_helper'

describe "mail_servers/show" do
  before(:each) do
    @mail_server = assign(:mail_server, stub_model(MailServer,
      :name => "",
      :ip => "",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
