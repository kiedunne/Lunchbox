require 'rails_helper'

RSpec.feature 'Signup', type: :feature do
  scenario 'User can sign up' do
   visit '/users/sign_up'
   fill_in 'user_username', with: 'test'
   fill_in 'user_email', with: 'test123@gmail.com'
   fill_in 'user_password', with: '123456'
   fill_in 'user_password_confirmation', with: '123456'
   click_button 'Sign up' 
   expect(page).to have_content('test')
 end
end
