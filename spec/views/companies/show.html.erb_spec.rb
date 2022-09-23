require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      name: "Name",
      post_code: "Post Code",
      active: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Post Code/)
    expect(rendered).to match(/false/)
  end
end
