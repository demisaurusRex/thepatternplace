class CustomisedInstructionsController < ApplicationController
  def show
    @customised_instruction = CustomisedInstruction.find(params[:id])
    @customised_instruction_steps_by_category = @customised_instruction.custom_categories
  end

  def edit
    @customised_instruction = CustomisedInstruction.find(params[:id])
    @customised_instruction_steps_by_category = @customised_instruction.custom_categories
    @custom_category = CustomCategory.new
  end

  def update
    @customised_instruction = CustomisedInstruction.find(params[:id])
    @customised_instruction.update(customised_instruction_params)
    redirect_to customised_instruction_path(@customised_instruction)
  end

  def new
    @order = Order.find(params[:order_id])
    @customised_instruction = CustomisedInstruction.new
  end

  def create
    @order = Order.find(params[:order_id])
    @customised_instruction = CustomisedInstruction.new(customised_instruction_params)
    @customised_instruction.order_id = @order.id
    # make the customised instruction that it's going to be scoped to
    @customised_instruction.save
    # make the customised instruction categories
    @order.pattern.categories.each do |category|
      @newcategory = CustomCategory.new(
        customised_instruction: @customised_instruction,
        name: category.name,
        position: category.position
      )
      @newcategory.save!
      # make the customised instruction steps for each category
      category.instructions.each do |instruction_step|
        newstep = CustomisedInstructionStep.new(
          customised_instruction: @customised_instruction,
          custom_category: @newcategory,
          instruction: instruction_step,
          position: instruction_step.position
        )
        newstep.save!
      end
    end
    redirect_to edit_customised_instruction_path(@customised_instruction)
  end

  def destroy
    @customised_instruction = CustomisedInstruction.find(params[:id])
    @pattern = @customised_instruction.order.pattern
    @customised_instruction.destroy
    redirect_to pattern_instructions_path(@pattern)
  end

  private

  def customised_instruction_params
    params.require(:customised_instruction).permit(:name)
  end
end
