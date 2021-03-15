require 'rails_helper'

RSpec.describe Content, type: :model do
  it "is valid with a title and content_review_notes" do 
    content = Content.new(title: nil, content_review_notes: 'abc', content_type: 'Blog Post')
    content.valid?
    expect(content.errors[:title]).to include("can't be blank")

  end
  it "is invalid without a title"
  it "is invalid without content_review_notes"
  
end
