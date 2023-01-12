class CartsController < ApplicationController
  def show
    @cart = @current_cart
  end

  def checkout
    # Creates a new order for every single item in the cart
    @cart = @current_cart

    @cart.line_items.each do |line_item|
      new_order = Order.new
      new_order.user = current_user
      new_order.pattern = line_item.pattern
      new_order.price_paid = line_item.pattern.price
      new_order.save
    end

    @cart.destroy

    session[:cart_id] = nil

    redirect_to patterns_path, notice: 'Your purchase is successfull'
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to patterns_path
  end
end
