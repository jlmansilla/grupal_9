require "rails_helper"

RSpec.describe UserPostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_posts").to route_to("user_posts#index")
    end

    it "routes to #new" do
      expect(get: "/user_posts/new").to route_to("user_posts#new")
    end

    it "routes to #show" do
      expect(get: "/user_posts/1").to route_to("user_posts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_posts/1/edit").to route_to("user_posts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_posts").to route_to("user_posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_posts/1").to route_to("user_posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_posts/1").to route_to("user_posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_posts/1").to route_to("user_posts#destroy", id: "1")
    end
  end
end
