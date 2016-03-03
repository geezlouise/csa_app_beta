class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :farm
	belongs_to :box
end
