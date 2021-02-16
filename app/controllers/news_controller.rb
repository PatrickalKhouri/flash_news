class NewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index_pt, :index_es]

  before_action :set_news, only: [:edit, :update, :show, :destroy]

  def index_pt
    @news = policy_scope(News)
  end

  def index_es
    @news = policy_scope(News)
  end

  def show
    authorize @news
  end

  def new
    @news = News.new
    authorize @news
    
  end

  def create
    @news = News.new(news_params)
    @news.user = current_user
    authorize @news
    if @news.save
      redirect_to news_path(@news.id)
    else
      render :new
    end
  end

  def edit
    authorize @news
  end

  def update
    authorize @news
    @news.update(news_params)
    if @news.save
      redirect_to news_path(@news.id)
    else
      render :edit
    end
  end

  def destroy
    authorize @news
    @news.destroy
    redirect_to news_pt_path
  end

  private

  def set_news
    @news = News.find(params[:id])
  end


  def news_params
    params.require(:news).permit(:title_es, :title_pt, :content_es, :content_pt, :photo)
  end
end
