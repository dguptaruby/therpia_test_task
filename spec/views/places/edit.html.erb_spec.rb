require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      place_name: "MyString"
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input[name=?]", "place[place_name]"
    end
  end
end
