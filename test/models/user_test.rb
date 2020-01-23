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

  test "user's email should not be empty" do
    @user.email = "      "
    assert_not @user.valid?
  end

  test "user must enter a valid email address" do
    valid_address = %w[USER@foo.com THE_US-ER@foo.bar.org first.last@foo.jp]
    valid_address.each do |va|
      @user.email = va
      assert @user.valid?, "#{va.inspect} should be a valid address"
    end
  end

  test "user names are not too long" do
    @user.name = "a"*51
    assert_not @user.valid?
  end

  test "user emails are unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "user emails are not too long" do
    @user.email = "a"*244+"@"+"example.com"
    assert_not @user.valid?
  end
end
