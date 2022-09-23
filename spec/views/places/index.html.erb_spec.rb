require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        place_name: "Place Name"
      ),
      Place.create!(
        place_name: "Place Name"
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", text: "Place Name".to_s, count: 2
  end
end
