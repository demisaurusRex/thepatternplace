class PatternsController < ApplicationController
  def index
  end

  def show
    @pattern = Pattern.find(params[:id])
  end
end
