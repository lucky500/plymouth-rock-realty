class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :find_property

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.property_id = @property.id
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to property_path(@property)    
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to property_path(@property)    
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to property_path(@property)
  end

  private
  def find_property
    @property = Property.find(params[:property_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description, :user_id, :property_id)
  end
end
