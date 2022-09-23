require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      place_name: "Place Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Place Name/)
  end
end
