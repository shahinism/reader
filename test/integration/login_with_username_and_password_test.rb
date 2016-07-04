require 'test_helper'

class LoginWithUsernameAndPasswordTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @user = users(:one)
    @password = 'password'
  end

  def login_test(user_data)
    post new_user_session_path, user: user_data
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_equal 'Signed in successfully.', flash[:notice]
  end

  test 'User should be able to login with username' do
    login_test(login: @user.username, password: @password)
  end

  test 'User should be able to login with email' do
    login_test(login: @user.email, password: @password)
  end
end
