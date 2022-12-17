class PatternsController < ApplicationController
  def index
    @patterns = Pattern.all
  end

  def show
  end
end
