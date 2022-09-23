require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        name: "Name",
        post_code: "Post Code",
        active: false
      ),
      Company.create!(
        name: "Name",
        post_code: "Post Code",
        active: false
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Post Code".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
