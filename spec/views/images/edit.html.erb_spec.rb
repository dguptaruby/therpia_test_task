require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      real_name: "MyString",
      image_name: "MyString"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input[name=?]", "image[real_name]"

      assert_select "input[name=?]", "image[image_name]"
    end
  end
end
