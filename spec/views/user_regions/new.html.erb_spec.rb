require 'rails_helper'

RSpec.describe "user_regions/new", type: :view do
  before(:each) do
    assign(:user_region, UserRegion.new())
  end

  it "renders new user_region form" do
    render

    assert_select "form[action=?][method=?]", user_regions_path, "post" do
    end
  end
end
