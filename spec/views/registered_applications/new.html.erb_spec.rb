require 'rails_helper'

RSpec.describe "registered_applications/new", type: :view do
  before(:each) do
    assign(:registered_application, RegisteredApplication.new(
      :name => "MyString",
      :url => "MyText"
    ))
  end

  it "renders new registered_application form" do
    render

    assert_select "form[action=?][method=?]", registered_applications_path, "post" do

      assert_select "input#registered_application_name[name=?]", "registered_application[name]"

      assert_select "textarea#registered_application_url[name=?]", "registered_application[url]"
    end
  end
end
