class ArticlesController < ApplicationController
  
  before_action :find_article, only: [:show, :edit, :update]
  
  def index
    @articles = Article.all
  end

  def show
    
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit

  end

  def update
    
    #raise method will cause the application to pause and print out the params on an error page.
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
    puts params.inspect
  end

  private

    def find_article
      @article = Article.find(params[:id])
    end
end
