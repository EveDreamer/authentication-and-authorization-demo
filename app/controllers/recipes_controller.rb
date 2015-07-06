#
class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def udpate
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_url
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions)
  end
end
