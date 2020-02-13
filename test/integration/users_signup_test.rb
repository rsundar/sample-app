require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "Riggatoni",
                                         email: "riggi@rigattoni.com",
                                         password: "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "Riggatoni",
                                         email: "riggi@riggatoni.com",
                                         password: "foobar123",
                                         password_confirmation: "foobar123" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
