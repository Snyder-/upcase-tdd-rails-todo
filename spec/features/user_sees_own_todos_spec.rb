require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others todos" do
    Todo.create(name: "Buy Milk", email: "exampleother@example.com")
    Todo.create(name: "Buy Cheese", email: "example@example.com")

    sign_in

    expect(page).to_not have_css ".todos li", text: "Buy Milk"
    expect(page).to have_css ".todos li", text: "Buy Cheese"
  end
end
