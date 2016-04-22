require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    create_todo('Practice Coding')

    expect(page).to display_todo 'Practice Coding'
  end
end
