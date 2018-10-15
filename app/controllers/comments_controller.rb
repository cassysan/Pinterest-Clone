class CommentsController < ApplicationController
  before_action :set_pin

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to pin_path(@pin)
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_pin
    @pin = Pin.find_by(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description)
  end
end
