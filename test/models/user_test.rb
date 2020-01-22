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
end
