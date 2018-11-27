class PagesController < ApplicationController
  def home
    @cards = Card.all
  end

  def about
  end

  def allcards
    @cards = Card.all
  end

end
