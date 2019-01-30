require 'rails_helper'

RSpec.feature 'Signup', type: :feature do
  scenario 'User can sign up' do
    visit '/'
    click_button 'SIGN UP'
    fill_in 'user_username', with: 'test'
    find("input[id='email_signup']", visible: true)
    fill_in 'email_signup', with: 'test123@gmail.com'
    find("input[id='password_signup']", visible: true)
    fill_in 'password_signup', with: '123456'
    fill_in 'user_password_confirmation', with: '123456'
    click_button 'Sign up'
    expect(page).to have_content('test')
  end
end
