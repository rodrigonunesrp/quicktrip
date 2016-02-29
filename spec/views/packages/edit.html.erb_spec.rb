require 'rails_helper'

RSpec.describe "packages/edit", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
      :package_type => nil,
      :description => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit package form" do
    render

    assert_select "form[action=?][method=?]", package_path(@package), "post" do

      assert_select "input#package_package_type_id[name=?]", "package[package_type_id]"

      assert_select "input#package_description[name=?]", "package[description]"

      assert_select "input#package_link[name=?]", "package[link]"
    end
  end
end
