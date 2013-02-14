require 'spec_helper'

describe "block_list_servers/edit" do
  before(:each) do
    @block_list_server = assign(:block_list_server, stub_model(BlockListServer,
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit block_list_server form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => block_list_servers_path(@block_list_server), :method => "post" do
      assert_select "input#block_list_server_name", :name => "block_list_server[name]"
      assert_select "input#block_list_server_url", :name => "block_list_server[url]"
    end
  end
end
