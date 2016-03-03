class Box < ActiveRecord::Base
	belongs_to :farm
	has_many :likes
end
