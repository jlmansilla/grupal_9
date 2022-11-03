require 'rails_helper'

RSpec.describe "user_posts/edit", type: :view do
  let(:user_post) {
    UserPost.create!(
      user: nil,
      post: nil
    )
  }

  before(:each) do
    assign(:user_post, user_post)
  end

  it "renders the edit user_post form" do
    render

    assert_select "form[action=?][method=?]", user_post_path(user_post), "post" do

      assert_select "input[name=?]", "user_post[user_id]"

      assert_select "input[name=?]", "user_post[post_id]"
    end
  end
end
