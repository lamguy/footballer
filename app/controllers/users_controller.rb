class UsersController < ApplicationController
	before_filter :find_user

	def show
		@user = User.find(params[:id]) if params[:id]

		respond_to do |format|
			format.html
			format.xml { render :xml => @user }
		end
	end

	def follow
		@user = User.find(params[:id]) if params[:id]
		current_user.follow(@user) if current_user

		session[:return_to] ||= request.referer
		redirect_to session.delete(:return_to)
	end

	def goodbye
		@user = User.find(params[:id]) if params[:id]
		current_user.stop_following(@user) if current_user
		
		session[:return_to] ||= request.referer
		redirect_to session.delete(:return_to)
	end

	private
	def find_user
		@model = User.find(params[:id]) if params[:id]
	end
end