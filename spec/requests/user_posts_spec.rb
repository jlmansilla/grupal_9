require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/user_posts", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # UserPost. As you add validations to UserPost, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      UserPost.create! valid_attributes
      get user_posts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      user_post = UserPost.create! valid_attributes
      get user_post_url(user_post)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_user_post_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      user_post = UserPost.create! valid_attributes
      get edit_user_post_url(user_post)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new UserPost" do
        expect {
          post user_posts_url, params: { user_post: valid_attributes }
        }.to change(UserPost, :count).by(1)
      end

      it "redirects to the created user_post" do
        post user_posts_url, params: { user_post: valid_attributes }
        expect(response).to redirect_to(user_post_url(UserPost.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new UserPost" do
        expect {
          post user_posts_url, params: { user_post: invalid_attributes }
        }.to change(UserPost, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post user_posts_url, params: { user_post: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_post" do
        user_post = UserPost.create! valid_attributes
        patch user_post_url(user_post), params: { user_post: new_attributes }
        user_post.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the user_post" do
        user_post = UserPost.create! valid_attributes
        patch user_post_url(user_post), params: { user_post: new_attributes }
        user_post.reload
        expect(response).to redirect_to(user_post_url(user_post))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        user_post = UserPost.create! valid_attributes
        patch user_post_url(user_post), params: { user_post: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested user_post" do
      user_post = UserPost.create! valid_attributes
      expect {
        delete user_post_url(user_post)
      }.to change(UserPost, :count).by(-1)
    end

    it "redirects to the user_posts list" do
      user_post = UserPost.create! valid_attributes
      delete user_post_url(user_post)
      expect(response).to redirect_to(user_posts_url)
    end
  end
end
