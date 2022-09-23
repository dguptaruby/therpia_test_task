require 'rails_helper'

RSpec.describe "user_regions/index", type: :view do
  before(:each) do
    assign(:user_regions, [
      UserRegion.create!(),
      UserRegion.create!()
    ])
  end

  it "renders a list of user_regions" do
    render
  end
end
