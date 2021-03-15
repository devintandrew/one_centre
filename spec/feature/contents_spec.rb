require 'rails_helper'

RSpec.feature "Contents", type: :feature do
    scenario "create new content" do
        visit root_path
        click_link "Create New Content"
        fill_in "title", with: "test title"
        fill_in "content_review_notes", with: "test content"
        click_button "Create Content"

        expect(page).to have_content "Content was successfully created"
        expect(page).to have_content "test title"
    end

    scenario "create new content" do
        visit root_path
        click_link "Create New Content"
        
        fill_in "content_review_notes", with: "test content"
        click_button "Create Content"

        expect(page).to have_content "1 error prohibited this content from being saved:"
        expect(page).to have_content "Title can't be blank"
    end
end