require 'rails_helper'

RSpec.feature 'Homepage', type: :feature do
  scenario 'Shows Meet and Eat welcome page' do
    visit '/'
    expect(page).to have_content('SIGNUP')
    expect(page).to have_content('LOGIN')
  end
end
