class Admin::ProfilesController < ApplicationController
  before_action :set_user, only: %i[ show update ]

  def show
  end

  def index
    @profiles = User.all
  end

  def update
    if @user.update(profile_params)
      redirect_to admin_profiles_path, status: :see_other, notice: "Your profile was updated successfully."
    else
      render :show, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params.expect(:id))
    end

    def profile_params
      params.expect(user: [ :first_name, :last_name, :nickname, :role ])
    end
end
