require 'spec_helper'

describe "mail_servers/index" do
  before(:each) do
    assign(:mail_servers, [
      stub_model(MailServer,
        :name => "",
        :ip => "",
        :description => "MyText"
      ),
      stub_model(MailServer,
        :name => "",
        :ip => "",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of mail_servers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
