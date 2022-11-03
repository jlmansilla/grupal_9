require 'rails_helper'

RSpec.describe "user_posts/index", type: :view do
  before(:each) do
    assign(:user_posts, [
      UserPost.create!(
        user: nil,
        post: nil
      ),
      UserPost.create!(
        user: nil,
        post: nil
      )
    ])
  end

  it "renders a list of user_posts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
