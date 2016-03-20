class UsersController < ApplicationController
  def index
    @search = User.search(params[:q])
    @users = @search.result.paginate(page: params[:page])
    @search.build_condition
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "User data was updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:success] = "User was deleted!"
      redirect_to users_path
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :age, :sex)
  end
end
