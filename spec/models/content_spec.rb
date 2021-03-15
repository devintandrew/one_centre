require 'rails_helper'

RSpec.describe Content, type: :model do
  it "is invalid without a title and content_review_notes" do 
    content = Content.new(title: "test title", content_review_notes: 'abc', content_type: 'Blog Post')
    content.valid?
    expect(content.errors[:title]).to include("can't be blank")

  end
  
  it "is invalid without content_review_notes" do 
    content = Content.new(title: "test title", content_review_notes: nil, content_type: 'Blog Post')
    content.valid?
    expect(content.errors[:content_review_notes]).to include("can't be blank")
  end

  it "is invalid without ingredients" do
    content = Content.new(title: "test title", content_review_notes: "abc", content_type: "Recipe", steps: ['step1', 'step2'])
    content.valid?
    expect(content.errors[:ingredients]).to include("can't be blank")
  end

  it "is invalid without steps" do
    content = Content.new(title: "test title", content_review_notes: "abc", content_type: "Recipe", ingredients: ['ingred1', 'ingred2'])
    content.valid?
    expect(content.errors[:steps]).to include("can't be blank")
  end
  
end
