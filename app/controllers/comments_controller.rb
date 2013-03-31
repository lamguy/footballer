class CommentsController < ApplicationController

	def vote
		value =  params[:type] == 'up' ? 1 : -1
		@comment = Comment.find(params[:id])
		@comment.add_or_update_evaluation(:votes, value, current_user)
		redirect_to post_path(@comment.post)
	end

	def create
		@post = Post.find(params[:post_id])
		sanitized_comment = Sanitize.clean(params[:comment][:comment], Sanitize::Config::BASIC)
		@comment = @post.comments.create(:comment => sanitized_comment,  :user => current_user)
		redirect_to post_path(@post)
	end
end
