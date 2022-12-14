require 'rails_helper'

RSpec.describe "countries/edit", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      country_name: "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do

      assert_select "input[name=?]", "country[country_name]"
    end
  end
end
