require 'rails_helper'

RSpec.feature "Contents", type: :feature do
    scenario "create new content" do
        visit root_path
        click_link "Create Content"
        fill_in "Title", with: "test title"
        fill_in "Content review notes", with: "test content"
        click_button "Create Content"

        expect(page).to have_content "Content was successfully created"
        expect(page).to have_content "test title"
    end
end