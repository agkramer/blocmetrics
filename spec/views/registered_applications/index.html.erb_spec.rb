require 'rails_helper'

RSpec.describe "registered_applications/index", type: :view do
  before(:each) do
    assign(:registered_applications, [
      RegisteredApplication.create!(
        :name => "Name",
        :url => "MyText"
      ),
      RegisteredApplication.create!(
        :name => "Name",
        :url => "MyText"
      )
    ])
  end

  it "renders a list of registered_applications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
