require 'rails_helper'

feature 'User can make completed todo incomplete' do
  scenario 'with a completed todo' do
    sign_in

    create_todo 'Milk'
    click_on 'Mark Completed'

    click_on 'Mark Incomplete'

    expect(page).to_not display_completed_todo 'Milk'
  end
end
