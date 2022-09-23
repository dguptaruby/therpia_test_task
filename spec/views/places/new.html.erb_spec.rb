require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      place_name: "MyString"
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "input[name=?]", "place[place_name]"
    end
  end
end
