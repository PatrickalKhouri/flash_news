class CommentsController < ApplicationController

  before_action :set_news, only: [ :create, :destroy]

  def create
    #@comment = Comment.new(comment_params)
    @comment = @news.comments.create(params[:comment].permit(:description))
    @comment.user = current_user
    @comment.language = Language.first
    @comment.news = @news
    authorize @comment
    if @comment.save
      redirect_to news_pt_path(@news, anchor: 'footer')
    else
      flash[:alert] = 'Something went wrong'          # TODO
      render :new 
    end
  end

  def destroy
    @comment = @news.comments.find(params[:id])
    @comment.destroy
    redirect_to news_pt_path(@news, anchor: 'footer')
  end

  private

  def set_news
    @news = News.find(params[:news_id])
  end

  def comment_params
    params.require(:comment).permit(:description)
  end
  
end
