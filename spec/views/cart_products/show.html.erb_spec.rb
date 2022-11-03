require 'rails_helper'

RSpec.describe "cart_products/show", type: :view do
  before(:each) do
    assign(:cart_product, CartProduct.create!(
      qty: 2,
      cart: nil,
      product: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
