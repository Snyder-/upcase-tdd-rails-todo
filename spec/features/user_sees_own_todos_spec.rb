require 'rails_helper'

feature 'User sees own todos' do
  scenario "doesn't see others todos" do
    Todo.create(name: 'Buy Milk', email: 'exampleother@example.com')
    Todo.create(name: 'Buy Cheese', email: 'example@example.com')

    sign_in

    expect(page).to_not display_todo 'Buy Milk'
    expect(page).to display_todo 'Buy Cheese'
  end
end
