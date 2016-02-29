require 'rails_helper'

RSpec.describe "packages/new", type: :view do
  before(:each) do
    assign(:package, Package.new(
      :package_type => nil,
      :description => "MyString",
      :link => "MyString"
    ))
  end

  it "renders new package form" do
    render

    assert_select "form[action=?][method=?]", packages_path, "post" do

      assert_select "input#package_package_type_id[name=?]", "package[package_type_id]"

      assert_select "input#package_description[name=?]", "package[description]"

      assert_select "input#package_link[name=?]", "package[link]"
    end
  end
end
