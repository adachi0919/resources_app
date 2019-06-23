class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def search
    user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age)
  end

  def user_params
    params.require(:user).permit(:name, :age)
  end

end
