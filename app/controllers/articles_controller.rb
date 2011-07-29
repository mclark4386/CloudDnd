class ArticlesController < ApplicationController
	load_and_authorize_resource
  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def index
	@articles = Article.find(:all)
  end

end
