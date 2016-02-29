require 'rails_helper'

RSpec.describe "packages/index", type: :view do
  before(:each) do
    assign(:packages, [
      Package.create!(
        :package_type => nil,
        :description => "Description",
        :link => "Link"
      ),
      Package.create!(
        :package_type => nil,
        :description => "Description",
        :link => "Link"
      )
    ])
  end

  it "renders a list of packages" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
