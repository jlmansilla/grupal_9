require 'rails_helper'

RSpec.describe "post_tags/new", type: :view do
  before(:each) do
    assign(:post_tag, PostTag.new(
      tag: nil,
      post: nil
    ))
  end

  it "renders new post_tag form" do
    render

    assert_select "form[action=?][method=?]", post_tags_path, "post" do

      assert_select "input[name=?]", "post_tag[tag_id]"

      assert_select "input[name=?]", "post_tag[post_id]"
    end
  end
end
