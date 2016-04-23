require 'rails_helper'

feature 'User can view completed todos' do
  scenario 'with completed todos' do
    sign_in

    create_todo 'Watch Force Awakens'

    click_on 'Mark Completed'

    expect(page).to display_completed_todo('Watch Force Awakens')
  end
end
