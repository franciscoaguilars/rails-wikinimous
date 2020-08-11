class ArticleController < ApplicationController
    def index
        @articles = Article.all.reverse_order
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(strong_params)
        @article.save

        redirect_to "/articles"
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(strong_params)
        
        redirect_to "/articles"
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        
        redirect_to "/articles"
    end
    private
    def strong_params
        params.require(:article).permit(:title, :content)
    end
end
