require 'rails_helper'

RSpec.describe "post_tags/index", type: :view do
  before(:each) do
    assign(:post_tags, [
      PostTag.create!(
        tag: nil,
        post: nil
      ),
      PostTag.create!(
        tag: nil,
        post: nil
      )
    ])
  end

  it "renders a list of post_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
