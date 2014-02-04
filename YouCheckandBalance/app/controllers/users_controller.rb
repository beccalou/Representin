class UsersController < ApplicationController

	def index

	end

	def new
	end

	def create
	end

	def show
		@user = User.find(params[:id])
		@phrases = Phrase.where(user_id: params[:id])
	end

	def edit
	end

	def update
	end

end

private

def user_params
	params.require(:user).permit(:first_name, :last_name, :address, :email)
end