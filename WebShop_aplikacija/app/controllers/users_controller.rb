class UsersController < ApplicationController
	def index
		@user=User.all
	end

	def show
		@user=User.find(params[:id])
	end

	def create
		@user=User.new(user_params)
		if @user.save
			@cart=Cart.new
			@cart.user=@user
			@cart.save
			redirect_to products_path
		else

			redirect_to new_user_path
		end
	end

	def new
	    @user=User.new
	end



	def update
	end

	def edit 
	end

	def destroy
	end

private
	def user_params
		params.require(:user).permit(:username,:mail,:password,:password_confirmation)
	end
end
