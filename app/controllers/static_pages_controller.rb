class StaticPagesController < ApplicationController

  def home
    @title = "Home"
  end

  def definition
    @title = "Definition"
  end

  def quiz
    @title = "Quiz"
  end

  def product
    @title = "Product"
  end

  def about
    @title = "About"
  end

end
