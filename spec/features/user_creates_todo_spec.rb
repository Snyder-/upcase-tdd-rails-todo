require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    click_on "New Todo"
    fill_in "Name", with: "Practice Coding"
    click_on "Create Todo"

    expect(page).to have_css ".todos li", text: "Practice Coding"
  end
end
