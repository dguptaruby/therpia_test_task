require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      real_name: "Real Name",
      image_name: "Image Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Real Name/)
    expect(rendered).to match(/Image Name/)
  end
end
