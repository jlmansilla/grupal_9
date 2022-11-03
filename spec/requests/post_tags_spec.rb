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

RSpec.describe "/post_tags", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PostTag. As you add validations to PostTag, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PostTag.create! valid_attributes
      get post_tags_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      post_tag = PostTag.create! valid_attributes
      get post_tag_url(post_tag)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_post_tag_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      post_tag = PostTag.create! valid_attributes
      get edit_post_tag_url(post_tag)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PostTag" do
        expect {
          post post_tags_url, params: { post_tag: valid_attributes }
        }.to change(PostTag, :count).by(1)
      end

      it "redirects to the created post_tag" do
        post post_tags_url, params: { post_tag: valid_attributes }
        expect(response).to redirect_to(post_tag_url(PostTag.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PostTag" do
        expect {
          post post_tags_url, params: { post_tag: invalid_attributes }
        }.to change(PostTag, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post post_tags_url, params: { post_tag: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested post_tag" do
        post_tag = PostTag.create! valid_attributes
        patch post_tag_url(post_tag), params: { post_tag: new_attributes }
        post_tag.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the post_tag" do
        post_tag = PostTag.create! valid_attributes
        patch post_tag_url(post_tag), params: { post_tag: new_attributes }
        post_tag.reload
        expect(response).to redirect_to(post_tag_url(post_tag))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        post_tag = PostTag.create! valid_attributes
        patch post_tag_url(post_tag), params: { post_tag: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested post_tag" do
      post_tag = PostTag.create! valid_attributes
      expect {
        delete post_tag_url(post_tag)
      }.to change(PostTag, :count).by(-1)
    end

    it "redirects to the post_tags list" do
      post_tag = PostTag.create! valid_attributes
      delete post_tag_url(post_tag)
      expect(response).to redirect_to(post_tags_url)
    end
  end
end
