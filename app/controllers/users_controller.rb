class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end




  private

  def set_current_user
    @user = current_user
  end

end
