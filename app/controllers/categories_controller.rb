class CategoriesController < ApplicationController
  def create
    @pattern = Pattern.find(params[:id])
    @category = Category.new(category_params)
    @category.pattern = @pattern
    @category.position = @pattern.categories.length + 1
    if @category.save
      redirect_to new_instruction_path, notice: 'Category created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
