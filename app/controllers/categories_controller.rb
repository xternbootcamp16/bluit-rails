class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to posts_path, flash: { :"alert-success" => "Thank you for creating a category!" } }
        format.json { render :show, status: :created, location: @category }
      else
        flash.now[:"alert-danger"] = @category.errors.full_messages
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :title, :description, :sidebar, :submission_text)
  end
end
