class LikesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_box

	def create
		@box.likes.where(user_id: current_user.id).first_or_create

		respond_to do |format|
			format.html { redirect_to request.referrer }
		end
	end

	def destroy
		@box.likes.where(user_id: current_user.id).destroy_all

		respond_to do |format|
			format.html {redirect_to request.referrer}
		end
	end

	def like
		box = Like.new
		box.save

		redirect_to root_path
	end

	def view_likes
		@likes = Like.all
	end

	private

	def set_box
		@box = Box.find(params[:box_id])
	end
end
