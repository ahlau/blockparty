require 'spec_helper'

describe "block_list_servers/index" do
  before(:each) do
    assign(:block_list_servers, [
      stub_model(BlockListServer,
        :name => "Name",
        :url => "Url"
      ),
      stub_model(BlockListServer,
        :name => "Name",
        :url => "Url"
      )
    ])
  end

  it "renders a list of block_list_servers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
