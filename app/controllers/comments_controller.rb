class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.creat!(params.except(comment: [ :content ]))
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
