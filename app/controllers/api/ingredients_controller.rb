class Api::IngredientsController < ApplicationController

  def index
    render json: Ingredient.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      render json: @ingredient, status: 201
    else
      render json: {status: "There is an error"}
    end
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      render json: @ingredient, status: 200
    else
      render json: {status: "Failed to update ingredient"}
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    render json: {result: "info is destroyed"}, status: 200
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :purchase_date, :expiration_date, :in_freezer, :category_id)
  end

end

