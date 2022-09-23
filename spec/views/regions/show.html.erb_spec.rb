require 'rails_helper'

RSpec.describe "regions/show", type: :view do
  before(:each) do
    @region = assign(:region, Region.create!(
      region_name: "Region Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Region Name/)
  end
end
