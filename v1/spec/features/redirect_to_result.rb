require 'rails_helper'

feature "User redirects to the show page" do
  scenario "successfully loaded book content" do
    visit 'http://localhost:3000/show/1891830856'
    expect(page).to have_content "American Elf"
  end
end