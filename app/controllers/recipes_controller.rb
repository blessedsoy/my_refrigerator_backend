class Api::RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        render json: @recipe, status: 201
      else
        render json: {status: "There is an error"}
      end
  end

  def update 
    @recipe = Recipe.find(params[:id])
      if @recipe.update(recipe_params)
        render json: @recipe, status: 200
      else
        render json: {status: "Failed to update recipe"}
      end
  end

  def show     
    @recipe = Recipe.find(params[:id])
  end

  def destroy     
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render json: {result: "info is destroyed"}, status: 200
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :image_url, :ingredients, :source_url, :publisher)
    end
    
end
