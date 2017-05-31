class UsersController < ApplicationController
	def register_new
		@user = User.new
		render :register
	end

	def create_new
		@user = User.new(user_parms)
    if @user.save
      redirect_to root_path
      flash[:notice] = "Hooray motherfucker"
    else
      flash[:alert] = "Thats when you know you fucked up"
    end
	end

  private

  def user_parms
    params.require(:user).permit(:email,
                                 :password, 
                                 :password_confirmation)
  end
end
