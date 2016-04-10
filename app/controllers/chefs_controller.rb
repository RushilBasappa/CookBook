class ChefsController < ApplicationController

  def show
    @chef = Chef.find(params[:id]);
    @recipes_published = Recipe.where(chef_id: params[:id]).where(published: true)
    @recipes_draft = Recipe.where(chef_id: params[:id]).where(published: false)
  end

  def index
    @chefs = Chef.all
  end

end
