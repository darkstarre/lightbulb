class IdeasController < ApplicationController
  def index

  end

  def new

  end

  def update
    idea = Idea.find_by(params[:id])
    idea.update(params[:idea].symbolize_keys)
  end

  def edit
    @idea = Idea.find_by(params[:id])
  end

  def destroy
    Idea.destroy(params[:id])
  end
end


