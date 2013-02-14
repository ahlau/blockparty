require 'spec_helper'

describe "block_list_servers/new" do
  before(:each) do
    assign(:block_list_server, stub_model(BlockListServer,
      :name => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new block_list_server form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => block_list_servers_path, :method => "post" do
      assert_select "input#block_list_server_name", :name => "block_list_server[name]"
      assert_select "input#block_list_server_url", :name => "block_list_server[url]"
    end
  end
end
