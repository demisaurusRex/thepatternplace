class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      @patterns = Pattern.where(title: params[:query])
    else
      @patterns = Pattern.all
    end
  end
end
