require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:country, Country.new(
      country_name: "MyString"
    ))
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do

      assert_select "input[name=?]", "country[country_name]"
    end
  end
end
