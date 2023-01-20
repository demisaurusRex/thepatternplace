class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      @patterns = Pattern.where(title: params[:query])
    else
      @patterns = Pattern.all
    end
  end

  def dashboard
    @current_user = current_user
    @patterns_for_sale = Pattern.where(user: current_user)
    @orders = current_user.orders
  end

end
