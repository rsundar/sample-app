require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:rigi)
  end

  test "login with invalid information" do
    get login_path
    post login_path, params: { session: { email: @user.email, password: "12345678"}}
    assert_redirected_to @user
    assert_template 'users/show'
    follow_redirect!
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
  end

  test "login with valid information followed by logout" do
    
  end
end
