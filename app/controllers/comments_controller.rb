class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @comment = Comment.new
  end

  def create
    @meetup = Meetup.find(params[:meetup_id])

    @comment = Comment.new(comment_params)
    @comment.meetup_id = @meetup.id
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to :back
    else
      render :new
    end
  end

  protected
  def comment_params
    params.require(:comment).permit(:message)
  end
end
