class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
  	@sections = Section.all
  	if params[:section_id].present?
  		@current_section = Section.find(params[:section_id])
  		if params[:sort_column].present?
  			puts @sort_column, @sort_direction
  			@food_items = @current_section.food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
  		else
  			@food_items = @current_section.food_items
  		end
  	end
  end

  def thankyou
    @orders = Order.all
    if params[:order_id].present?
      @current_order = Order.find(params[:order_id])
      @current_food_item = FoodItem.find(@current_order.food_item_id)
    end
  end

end
