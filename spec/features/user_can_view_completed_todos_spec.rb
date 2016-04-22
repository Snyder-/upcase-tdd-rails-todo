require 'rails_helper'

feature "User can view completed todos" do
  scenario "with completed todos" do
    sign_in

    click_on "New Todo"
    fill_in "Name", with: "Watch Force Awakens"
    click_on "Create Todo"

    click_on "Mark Completed"

    expect(page).to have_css ".todos li.completed", text: "Watch Force Awakens"
  end
end
