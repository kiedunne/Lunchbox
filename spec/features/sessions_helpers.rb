def sign_up
  visit new_user_registration_path
  fill_in 'user_username', with: 'test-username'
  page.find('#email_signup', visible: :all)
  fill_in 'email_signup', with: 'test123@gmail.com'
  page.find('#password_signup', visible: :all)
  fill_in 'password_signup', with: '123456'
  page.find('#password_confirmation', visible: :all)
  fill_in 'password_confirmation', with: '123456'
  click_button 'Sign up'
end

def sign_in
  visit new_user_session_path
  page.find('#email_login', visible: :all)
  fill_in 'email_login', with: 'test123@gmail.com'
  page.find('#password_login', visible: :all)
  fill_in 'password_login', with: '123456'
  click_button 'Log in'
end
