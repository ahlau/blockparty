require 'spec_helper'

describe "queries/edit" do
  before(:each) do
    @query = assign(:query, stub_model(Query,
      :mail_server_id => 1,
      :url => "MyString"
    ))
  end

  it "renders the edit query form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => queries_path(@query), :method => "post" do
      assert_select "input#query_mail_server_id", :name => "query[mail_server_id]"
      assert_select "input#query_url", :name => "query[url]"
    end
  end
end
