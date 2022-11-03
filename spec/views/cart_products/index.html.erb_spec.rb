require 'rails_helper'

RSpec.describe "cart_products/index", type: :view do
  before(:each) do
    assign(:cart_products, [
      CartProduct.create!(
        qty: 2,
        cart: nil,
        product: nil
      ),
      CartProduct.create!(
        qty: 2,
        cart: nil,
        product: nil
      )
    ])
  end

  it "renders a list of cart_products" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
