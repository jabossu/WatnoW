require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "ArthurDent", email: "a.dent@earth.fr",
      password: "foobarrr", password_confirmation: "foobarrr")
  end

  test "name should be present" do
    assert @user.valid?, "#{@user.name.inspect} should be valid"
  end

  test "email should be present" do
    assert @user.valid?, "#{@user.email.inspect} should be valid"
  end
  
  test "password should be present (nonblank)" do
    assert @user.valid?
  end

  test "password should have a minimum length" do
    assert @user.valid?
  end

end
