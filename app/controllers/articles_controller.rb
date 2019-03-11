class ArticlesController < ApplicationController
  #リファクタリングの追加
  before_action :set_article, only: [ :show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
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

  def article_params # ストロングパラメータを定義する
    params.require(:article).permit(:title, :body)
  end

#リファクタリングの追加
  def set_article
    @article = Article.find(params[:id])
  end

end
