FactoryBot.define do
  factory :cart_product do
    qty { 1 }
    cart { nil }
    product { nil }
  end
end
