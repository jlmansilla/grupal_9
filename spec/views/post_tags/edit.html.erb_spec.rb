require 'rails_helper'

RSpec.describe "post_tags/edit", type: :view do
  let(:post_tag) {
    PostTag.create!(
      tag: nil,
      post: nil
    )
  }

  before(:each) do
    assign(:post_tag, post_tag)
  end

  it "renders the edit post_tag form" do
    render

    assert_select "form[action=?][method=?]", post_tag_path(post_tag), "post" do

      assert_select "input[name=?]", "post_tag[tag_id]"

      assert_select "input[name=?]", "post_tag[post_id]"
    end
  end
end
