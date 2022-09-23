require 'rails_helper'

RSpec.describe "cities/show", type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
      city_name: "City Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City Name/)
  end
end
