class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to :action => "search"
  end

  def search
    user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to :action => "search"
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to :action => "search"
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age)
  end

  def user_params
    params.require(:user).permit(:name, :age)
  end

end
