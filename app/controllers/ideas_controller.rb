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
end
