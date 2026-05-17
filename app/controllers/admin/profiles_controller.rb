class Admin::ProfilesController < ApplicationController

  def show
  end

  def index
    @profiles = User.all
  end

  def update
  end

  private
    def profile_params
      params.expect(user: [ :first_name, :last_name, :nickname, :role ])
    end
end
