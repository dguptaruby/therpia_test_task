require 'rails_helper'

RSpec.describe "states/show", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      state_name: "State Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/State Name/)
  end
end
