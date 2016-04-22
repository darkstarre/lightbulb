class IdeasController < ApplicationController
  def index
    @idea = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def create
    @idea = Idea.create(:body => params[:idea]["body"])
    redirect_to ideas_path(@idea)
  end

  def update
    idea = Idea.find_by(params[:id])
    idea.update(params[:idea].symbolize_keys)
  end

  def edit
    @idea = Idea.find_by(params[:id])
    redirect_to root_path
  end

  def destroy
    Idea.destroy(params[:id])
  end

  def show
    @idea = Idea.find_by(params[:id])
  end
end


