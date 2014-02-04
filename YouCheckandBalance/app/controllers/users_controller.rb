class UsersController < ApplicationController

	def index
		@phrases = Phrase.where(user_id: params[:id])
		@user = current_user
	end

	def show
		@user = User.find(params[:id])
		@phrases = Phrase.where(user_id: params[:id])
	end

	def edit
		@user = User.find(current_user)
	end

	def update
	end

end

private

def user_params
	params.require(:user).permit(:first_name, :last_name, :address, :email)
end