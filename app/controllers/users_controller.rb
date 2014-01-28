class UsersController < ApplicationController
	def new
	end

	def show
		@user = User.find(params[:id])
	end

	def create 
		user_params = params.require(:user).permit(:name, :email, :password, :password_confirmation)
		user = User.new(user_params)

		if user.save
	      flash[:notice] = "Welcome to the Ritly app!"
	      # sign_in user
	      redirect_to action: :show, id: user.id
	    else
	   	  flash[:notice] = "You are not created!!"
	      render'new'
	    end

	end
end
