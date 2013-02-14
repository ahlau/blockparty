require 'spec_helper'

describe "queries/index" do
  before(:each) do
    assign(:queries, [
      stub_model(Query,
        :mail_server_id => 1,
        :url => "Url"
      ),
      stub_model(Query,
        :mail_server_id => 1,
        :url => "Url"
      )
    ])
  end

  it "renders a list of queries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
