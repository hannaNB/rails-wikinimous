class ArticlesController < ApplicationController
    skip_forgery_protection
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    # before_action :authorize, only: [:edit, :new, :update, :create, :destroy]
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.create(article_params)
        redirect_to articles_path
    end
    def show
        # @article = Article.find(params[:id])
    end
    def edit
        # @article = Article.find(params[:id])
    end
    def update
        # @article = Article.find(params[:id])
        @article.update(article_params)
        @article.save
        redirect_to articles_path
    end
    def destroy
        # @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    private

    def article_params
        params.require(:article).permit(:title, :content)
    end
    def set_article
        @article = Article.find(params[:id])
    end
end
