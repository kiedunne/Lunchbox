require 'rails_helper'

RSpec.feature 'Signin', type: :feature do
  scenario 'User can sign in' do
    visit '/users/sign_up'
    fill_in 'user_username', with: 'test'
    fill_in 'user_email', with: 'test123@gmail.com'
    fill_in 'user_password', with: '123456'
    fill_in 'user_password_confirmation', with: '123456'
    click_button 'Sign up'
    click_link 'Logout'
    click_link 'Login'
   fill_in 'user_email', with: 'test123@gmail.com'
   fill_in 'user_password', with: '123456'
   click_button 'Log in'
   expect(page).to have_content('test123@gmail.com')
   expect(page).to have_content('test')
 end
end
