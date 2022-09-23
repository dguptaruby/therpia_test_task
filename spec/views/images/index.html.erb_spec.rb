require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        real_name: "Real Name",
        image_name: "Image Name"
      ),
      Image.create!(
        real_name: "Real Name",
        image_name: "Image Name"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", text: "Real Name".to_s, count: 2
    assert_select "tr>td", text: "Image Name".to_s, count: 2
  end
end
