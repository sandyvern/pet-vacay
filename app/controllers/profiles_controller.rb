class ProfilesController < ApplicationController
  before_action :set_user

  def new
    @profile = @user.build_profile
  end

  def create
  	params[:profile][:pets].delete("")
  	
    @profile = @user.create_profile(profile_params)
    
    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, notice: 'Profile was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def profile_params
      params.require(:profile).permit(:bio, :city, :state, :zipcode, :user_id,
      	{pets: []}, :pets
      )
    end

    def set_user
      @user = user.find(params[:user_id])
    end
end

