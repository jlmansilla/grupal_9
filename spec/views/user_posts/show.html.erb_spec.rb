require 'rails_helper'

RSpec.describe "user_posts/show", type: :view do
  before(:each) do
    assign(:user_post, UserPost.create!(
      user: nil,
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
