FactoryBot.define do
    factory :content do
      title { "test title" }
      content_review_notes  { "Notes etc" }
      content_type { "Blog Post"}
    end
  end