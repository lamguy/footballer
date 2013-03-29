class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		sanitized_comment = Sanitize.clean(params[:comment][:comment], Sanitize::Config::BASIC)
		@comment = @post.comments.create(:comment => sanitized_comment,  :user => current_user)
		redirect_to post_path(@post)
	end
end
