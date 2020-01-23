require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Someone", email:"someone@example.com")
  end

  test "should be valid user" do
    assert @user.valid?
  end

  test "user's name should not be empty" do
    @user.name = "       "
    assert_not @user.valid?
  end

  test "user's email should be valid" do
    @user.email = "      "
    assert_not @user.valid?
  end

  test "user names are not too long" do
    @user.name = "a"*51
    assert_not @user.valid?
  end

  test "user emails are not too long" do
    @user.email = "a"*244+"@"+"example.com"
    assert_not @user.valid?
  end
end
