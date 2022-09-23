require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      real_name: "MyString",
      image_name: "MyString"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input[name=?]", "image[real_name]"

      assert_select "input[name=?]", "image[image_name]"
    end
  end
end
