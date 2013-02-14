require 'spec_helper'

describe "BlockListServers" do
  describe "GET /block_list_servers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get block_list_servers_path
      response.status.should be(200)
    end
  end
end
