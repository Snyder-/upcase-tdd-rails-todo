require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo("Practice Coding")

    expect(page).to have_css ".todos li", text: "Practice Coding"
  end
end
