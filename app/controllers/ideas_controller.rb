class IdeasController < ApplicationController
  before_action :require_login, only: [:update, :destroy]

  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def show
    @idea = Idea.find(params[:id])
    @user = User.find_by_id(@idea.user_id)
    @comment = @idea.comments.new
    @comments = @idea.comments.all

  end

  def create
    if (current_user)
      @idea = current_user.ideas.create(:body => params[:idea]["body"])
    else
      @idea = anonymous_user.ideas.create(body: params[:idea]["body"])
    end
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


