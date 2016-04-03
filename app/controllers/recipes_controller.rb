class RecipesController < ApplicationController

  before_action :require_permission

  def index
    @recipes = Recipe.all
  end
  def new
    @recipe = Recipe.new
  end
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.chef_id = current_chef.id

    if @recipe.save
      flash[:success] = "Recipe created"
      redirect_to recipes_path
    else
      render 'new'
    end
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :summary, :procedure, :picture)
  end

  def require_permission
    if !chef_signed_in?
      redirect_to root_path
    end
  end
end
