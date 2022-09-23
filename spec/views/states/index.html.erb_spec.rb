require 'rails_helper'

RSpec.describe "states/index", type: :view do
  before(:each) do
    assign(:states, [
      State.create!(
        state_name: "State Name"
      ),
      State.create!(
        state_name: "State Name"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", text: "State Name".to_s, count: 2
  end
end
