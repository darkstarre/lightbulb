class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def show
    @idea = Idea.find(params[:id])
    @comment = @idea.comments.new
    @comments = @idea.comments.all
    
  end

  def create
    @idea = Idea.create(:body => params[:idea]["body"])
    redirect_to ideas_path(@idea)
  end

  def update
    idea = Idea.find_by(params[:id])
    idea.update(params[:idea].symbolize_keys)
    redirect_to ideas_path
  end

  def edit
    @idea = Idea.find_by(params[:id])
  end

  def destroy
    Idea.destroy(params[:id])
    redirect_to ideas_path
  end

end


