require 'rails_helper'

RSpec.feature 'Homepage', type: :feature do
  scenario 'Shows Meet and Eat welcome page' do
    visit '/'
    expect(page).to have_content('About Meet and Eat')
  end

  # scenario 'Shows a users post on the homepage' do
  #   visit '/spots/new'
  #   fill_in 'Lunch_Spot', with: 'Test lunch spot'
  #   fill_in 'Time', with: 'Test time'
  #   fill_in 'Location', with: 'Test location'
  #   fill_in 'Extra_Info', with: 'Test info'
  #   expect(page).to have_content('Test lunch spot')
  #   expect(page).to have_content('Test time')
  #   expect(page).to have_content('Test location')
  #   expect(page).to have_content('Test info')
  # end
end
