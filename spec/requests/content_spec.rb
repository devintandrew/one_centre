require 'rails_helper'

RSpec.describe "Contents", type: :request do
  describe "GET /contents" do
     it "contains the contents" do
        get "/contents/new"
        expect(response).to render_template(:new)
     end
  end
end


