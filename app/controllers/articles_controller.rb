class ArticlesController < ApplicationController
  before_action :set_article, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def new
    # this instance is a dummy !
    @article = Article.new
  end

  def index
    @articles = Article.all 
  end

  def show
  end

  def create
    # Article.create is also vaild
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
    # redirect_to @article
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to @article
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body, :author)
    end

end  # end 'ArticlesController' class
