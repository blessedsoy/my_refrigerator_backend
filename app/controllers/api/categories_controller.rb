class Api::CategoriesController < ApplicationController
  def index
    render json: Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category, status: 201
    else
      render json: {status: "There is an error"}
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      render json: @category, status: 200
    else
      render json: {status: "Failed to update category"}
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render json: {result: "info is destroyed"}, status: 200
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
