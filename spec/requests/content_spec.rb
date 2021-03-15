require 'rails_helper'

RSpec.describe "Contents", type: :request do
  describe "GET /contents" do
     let!(:contents) { FactoryBot.content }
     it "contains the contents" do
        get "/contents"
        expect(response).to include contents.title
        expect(response).to include contents.content_review_notes
     end
  end
end
