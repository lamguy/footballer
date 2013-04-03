class CommentsController < ApplicationController

	def vote
		value =  params[:type] == 'up' ? 1 : -1
		@comment = Comment.find(params[:id])
		@comment.add_or_update_evaluation(:votes, value, current_user)
		redirect_to post_path(@comment.post)
	end

	def create
		if params[:post_id] 
			@resource = Post.find(params[:post_id])
			resource_path = post_path(@resource)
		else
			@resource = Match.find(params[:match_id])
			resource_path = match_path(@resource)
		end
		sanitized_comment = Sanitize.clean(params[:comment][:comment], Sanitize::Config::BASIC)
		@comment = @resource.comments.create(:comment => sanitized_comment,  :user => current_user)
		redirect_to resource_path
	end
end
