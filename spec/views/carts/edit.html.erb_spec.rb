require 'rails_helper'

RSpec.describe "carts/edit", type: :view do
  let(:cart) {
    Cart.create!(
      order: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:cart, cart)
  end

  it "renders the edit cart form" do
    render

    assert_select "form[action=?][method=?]", cart_path(cart), "post" do

      assert_select "input[name=?]", "cart[order_id]"

      assert_select "input[name=?]", "cart[user_id]"
    end
  end
end
