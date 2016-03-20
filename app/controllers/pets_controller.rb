class PetsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @pets = @user.pets
  end
  
  def edit_all
    @pets = Pet.where(user_id: params[:id])
  end

  def update_all
    if Pet.update(params[:pets].keys, params[:pets].values)
    flash[:success] = "Records was updated!"
    redirect_to user_pets_path(params[:id])
    else 
      render 'edit_all'
    end
  end
  
  private
  
  def pet_params
    params.require(:pets).permit!
  end
end
