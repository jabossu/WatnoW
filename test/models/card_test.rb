require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @card = Card.new(title: "Yolo", mood: "fun")
  end


  test "title should be present" do
    assert @card.valid?, "Cards must have a title"
  end

  test "mood should be present" do
    assert @card.valid?, "Cards must have a title"
  end

end
