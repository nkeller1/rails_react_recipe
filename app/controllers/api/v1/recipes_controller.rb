class Api::V1::RecipesController < ApplicationController
  def index
    recipe = Recipe.all.order(:name)
    render json: recipe
  end

  def create
    recipe = Recipe.create!(recipe_params)
    return render json: recipe.errors if !recipe
    render json: recipe
  end

  def show
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    recipe&.destroy
    render json: { message: 'Recipe deleted!' }
  end

  private

    def recipe_params
      params.permit(:name, :image, :ingredients, :instruction)
    end

    def recipe
      @recipe ||= Recipe.find(params[:id])
    end
end
