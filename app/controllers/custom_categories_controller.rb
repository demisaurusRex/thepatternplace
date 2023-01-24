class CustomCategoriesController < ApplicationController
  def create
    @customised_instruction = CustomisedInstruction.find(params[:customised_instruction_id])
    @category = CustomCategory.new(custom_category_params)
    @category.customised_instruction = @customised_instruction
    @category.position = @customised_instruction.custom_categories.length + 1
    if @category.save
      redirect_to edit_customised_instruction_path(@customised_instruction), notice: 'Category created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @custom_category = CustomCategory.find(params[:id])
    respond_to do |format|
      if @custom_category.update(custom_category_params)
        format.html { redirect_to edit_customised_instruction_path(@custom_category.customised_instruction), notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_category }
      else
        format.html { render :edit }
        # format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def custom_category_params
    params.require(:custom_category).permit(:name, :position, :showing)
  end
end
