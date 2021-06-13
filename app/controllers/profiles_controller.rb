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
    params.require(:profile).permit(:family_name, :first_name, :family_name_prono, :first_name_prono, )
  end

end
