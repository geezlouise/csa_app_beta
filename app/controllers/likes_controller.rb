class LikesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_box

	def create
		@box.likes.where(user_id: current_user.id).first_or_create

		respond to do |format|
			format.html { redirect_to request.referrer }
		end
	end

	private

	def set_box
		@box = Box.find(params[box_id])
	end
end
