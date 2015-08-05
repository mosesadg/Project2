class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new
  def new
    @comment = Comment.new
  end

  # create
  def create
    @comment = Comment.create(comment_params)

    redirect_to "/comments/#{@comment.id}"
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to "/comments/#{@comment.id}"
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to "/comments"
  end

  private
  def comment_params
    params.require(:comment).permit(:text_body, :author, :date_created, :video_id)
  end
end
