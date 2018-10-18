class CommentsController < ApplicationController
  before_action :set_pin
  before_action :set_comment, only: [:edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.pin = @pin
    @comment.user = current_user
    if @comment.save
      redirect_to @pin, notice: "Successfully created added new comment"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @comment.save
      redirect_to pin_path(@pin)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def set_pin
    @pin = Pin.find(params[:pin_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description, :pin_id)
  end
end
