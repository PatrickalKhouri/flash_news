class TagsController < ApplicationController
  before_action :set_tag, only: [:destroy]

  def index
    @tags = policy_scope(Tag)
  end

  def new
    @tag = Tag.new
    authorize @tag
  end

  def create
    @tag = Tag.new(tag_params)
    authorize @tag
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def destroy
    authorize @tag
    @tag.destroy
    redirect_to tags_path
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name, :language)
  end
end