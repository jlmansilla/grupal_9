require 'rails_helper'

RSpec.describe "cart_products/edit", type: :view do
  let(:cart_product) {
    CartProduct.create!(
      qty: 1,
      cart: nil,
      product: nil
    )
  }

  before(:each) do
    assign(:cart_product, cart_product)
  end

  it "renders the edit cart_product form" do
    render

    assert_select "form[action=?][method=?]", cart_product_path(cart_product), "post" do

      assert_select "input[name=?]", "cart_product[qty]"

      assert_select "input[name=?]", "cart_product[cart_id]"

      assert_select "input[name=?]", "cart_product[product_id]"
    end
  end
end
