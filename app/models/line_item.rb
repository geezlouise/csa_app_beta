class LineItem < ActiveRecord::Base
	belongs_to :box
	belongs_to :order
end
