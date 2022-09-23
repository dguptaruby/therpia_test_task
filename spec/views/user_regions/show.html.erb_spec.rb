require 'rails_helper'

RSpec.describe "user_regions/show", type: :view do
  before(:each) do
    @user_region = assign(:user_region, UserRegion.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
