class ProfilesController < ApplicationController
  def index
  end

  def new
    @profile = Profile.new
  end
end
