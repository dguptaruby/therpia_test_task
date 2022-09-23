require 'rails_helper'

RSpec.describe "countries/index", type: :view do
  before(:each) do
    assign(:countries, [
      Country.create!(
        country_name: "Country Name"
      ),
      Country.create!(
        country_name: "Country Name"
      )
    ])
  end

  it "renders a list of countries" do
    render
    assert_select "tr>td", text: "Country Name".to_s, count: 2
  end
end
