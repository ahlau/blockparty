require 'spec_helper'

describe "queries/new" do
  before(:each) do
    assign(:query, stub_model(Query,
      :mail_server_id => 1,
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new query form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => queries_path, :method => "post" do
      assert_select "input#query_mail_server_id", :name => "query[mail_server_id]"
      assert_select "input#query_url", :name => "query[url]"
    end
  end
end
