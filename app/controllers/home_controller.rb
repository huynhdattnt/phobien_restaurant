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


end
