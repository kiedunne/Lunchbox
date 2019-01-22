def sign_up
  visit new_user_registration_path
  fill_in 'user_username', with: 'test-username'
  fill_in 'user_email', with: 'test123@gmail.com'
  fill_in 'user_password', with: '123456'
  fill_in 'user_password_confirmation', with: '123456'
  click_button 'Sign up'
end

def sign_in
  visit new_user_session_path
  fill_in 'user_email', with: 'test123@gmail.com'
  fill_in 'user_password', with: '123456'
  click_button 'Log in'
end
