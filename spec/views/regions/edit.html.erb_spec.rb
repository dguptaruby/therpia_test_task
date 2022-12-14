require 'rails_helper'

RSpec.describe "regions/edit", type: :view do
  before(:each) do
    @region = assign(:region, Region.create!(
      region_name: "MyString"
    ))
  end

  it "renders the edit region form" do
    render

    assert_select "form[action=?][method=?]", region_path(@region), "post" do

      assert_select "input[name=?]", "region[region_name]"
    end
  end
end
