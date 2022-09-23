require 'rails_helper'

RSpec.describe "user_regions/edit", type: :view do
  before(:each) do
    @user_region = assign(:user_region, UserRegion.create!())
  end

  it "renders the edit user_region form" do
    render

    assert_select "form[action=?][method=?]", user_region_path(@user_region), "post" do
    end
  end
end
