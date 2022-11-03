require "rails_helper"

RSpec.describe CartProductsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cart_products").to route_to("cart_products#index")
    end

    it "routes to #new" do
      expect(get: "/cart_products/new").to route_to("cart_products#new")
    end

    it "routes to #show" do
      expect(get: "/cart_products/1").to route_to("cart_products#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cart_products/1/edit").to route_to("cart_products#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cart_products").to route_to("cart_products#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cart_products/1").to route_to("cart_products#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cart_products/1").to route_to("cart_products#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cart_products/1").to route_to("cart_products#destroy", id: "1")
    end
  end
end
