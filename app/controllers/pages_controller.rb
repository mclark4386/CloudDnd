class PagesController < ApplicationController
  def home
	@title = "Home"
	#@articles = Article.find(:all)
  end

  def about
	@title = "About"
  end

  def contact
	@title = "Contact Us"
  end

end
