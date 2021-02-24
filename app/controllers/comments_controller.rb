class CommentsController < ApplicationController

  before_action :set_news, only: [ :create]

  def create
    #@comment = Comment.new(comment_params)
    @comment = @news.comments.create(params[:comment].permit(:description))
    @comment.user = current_user
    @comment.language = Language.first
    @comment.video_id = Video.first.id
    @comment.news = @news
    authorize @comment
    if @comment.save
      redirect_to news_pt_path(@news, anchor: 'footer')
    else
      flash[:alert] = 'Something went wrong'          # TODO
      render :new 
    end
  end

  private

  def set_news
    @news = News.find(params[:news_id])
  end

  def comment_params
    params.require(:comment).permit(:description)
  end
  
end
