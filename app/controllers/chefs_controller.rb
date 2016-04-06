class ChefsController < ApplicationController

  def show
    @chef = Chef.find(params[:id]);
    @recipes = Recipe.where(chef_id: params[:id])
  end

end
