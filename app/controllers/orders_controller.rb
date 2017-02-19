class OrdersController < ApplicationController
	def new
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build
	end

	def create
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build order_params
		if @order.save
			redirect_to thankyou_path(order_id: @order.id), flash: {success: "Thank you for your order"}
		else
			render 'new'
		end
	end

	def order_params
		params.require(:order).permit(:quantity, :username, :phone_number, :address)
	end
end
