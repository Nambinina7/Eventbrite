class UsersController < ApplicationController
	 before_action :authenticate_user!
  def create
  end

  def show
    unless authenticate_user(params[:id])
      redirect_to user_path(current_user.id)
    end
		@user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
    
  end
  private

  def authenticate_user(id)
    current_user = User.find(id)
	end
end
