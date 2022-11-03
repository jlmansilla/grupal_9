require 'rails_helper'

RSpec.describe "post_tags/show", type: :view do
  before(:each) do
    assign(:post_tag, PostTag.create!(
      tag: nil,
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
