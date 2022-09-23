require 'rails_helper'

RSpec.describe "cities/index", type: :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        city_name: "City Name"
      ),
      City.create!(
        city_name: "City Name"
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", text: "City Name".to_s, count: 2
  end
end
