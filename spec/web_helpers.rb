require 'spec_helper'

def sign_up( email: 'me@me.com', password: '12345', password_confirmation: '12345')
  visit('/users/new')
  expect(page.status_code).to eq(200)
  fill_in(:email, with: email)
  fill_in(:password, with: password)
  fill_in(:password_confirmation, with: password_confirmation)
  click_button 'Sign up'
end