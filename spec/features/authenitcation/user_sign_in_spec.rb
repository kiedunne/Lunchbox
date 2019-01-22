require 'rails_helper'
require_relative '../sessions_helpers.rb'

RSpec.feature 'Sign in', type: :feature do
  scenario 'User can sign in' do
    sign_up
    click_link 'Sign out'
    sign_in
    expect(page).to have_content('test-username')
  end
end
