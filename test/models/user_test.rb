require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "Arthur Dent", email: "a.dent@earth.fr")
  end

  test "email should be valid" do
    assert @user.valid?, "#{@user.email.inspect} should be valid"
  end
end
