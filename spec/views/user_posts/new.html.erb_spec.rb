require 'rails_helper'

RSpec.describe "user_posts/new", type: :view do
  before(:each) do
    assign(:user_post, UserPost.new(
      user: nil,
      post: nil
    ))
  end

  it "renders new user_post form" do
    render

    assert_select "form[action=?][method=?]", user_posts_path, "post" do

      assert_select "input[name=?]", "user_post[user_id]"

      assert_select "input[name=?]", "user_post[post_id]"
    end
  end
end
