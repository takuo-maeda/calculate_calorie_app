class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:family_name, :first_name, :family_name_prono, :first_name_prono, :postal_code, :prefecture_id, :address, :street, :building, :phone_number, :birthday, :sex, :body_weight, :tall).merge(user_id: current_user.id)
  end

end
