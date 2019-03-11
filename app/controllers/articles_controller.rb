class ArticlesController < ApplicationController


  def index
    @articles = Article.all
  end



  def new
    @article = Article.new
  end



  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end




    private

  def article_params # ストロングパラメータを定義する
    params.require(:article).permit(:title, :body)
  end



end
