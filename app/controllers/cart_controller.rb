class CartController < ApplicationController
  def add_to_cart
  	line_item = LineItem.new
  	line_item.box_id = params[:box_id]
  	line_item.quantity = params[:quantity]
  	line_item.save

  	line_item.line_item_total = line_item.box.price * line_item.quantity
  	line_item.save

  	redirect_to root_path
  end

  def view_order
  	@line_items = LineItem.all
  end

  def checkout
  end
end
