class UsersController < ApplicationController

	def index
		@user = User.new
		@user.save!
	end

	def new
	end

	def create
	end

	def show
	end

	def update
	end

	def update
	end

end

private

def user_params
	params.require(:user).permit(:first_name, :last_name, :address)
end