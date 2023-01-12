class LineItemsController < ApplicationController
  def create
    if LineItem.find_by(pattern_id: @pattern.id, user: current_user)
      redirect_to cart_path(current_cart)
    end
    # Find associated product and current cart
    chosen_pattern = Pattern.find(params[:pattern_id])
    current_cart = @current_cart
    @line_item = LineItem.new
    @line_item.cart = current_cart
    @line_item.pattern = chosen_pattern
    @line_item.user = current_user

    # Save and redirect to cart show path
    @line_item.save
    redirect_to cart_path(current_cart)
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(@current_cart)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:pattern_id, :cart_id, :user_id)
  end
end
