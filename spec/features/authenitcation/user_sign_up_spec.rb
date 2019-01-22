require 'rails_helper'
require_relative '../sessions_helpers.rb'

RSpec.feature 'Sign up', type: :feature do
  scenario 'User can sign up' do
    sign_up
    expect(page).to have_content('test-username')
 end
end
