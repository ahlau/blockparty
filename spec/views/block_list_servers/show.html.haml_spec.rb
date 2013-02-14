require 'spec_helper'

describe "block_list_servers/show" do
  before(:each) do
    @block_list_server = assign(:block_list_server, stub_model(BlockListServer,
      :name => "Name",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
  end
end
