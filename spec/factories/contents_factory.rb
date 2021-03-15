FactoryBot.define do
    factory :contents do
      title { "test title" }
      content_review_notes  { "Notes etc" }
      content_type { "Blog Post"}
    end
  end