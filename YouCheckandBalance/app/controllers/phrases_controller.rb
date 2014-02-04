class PhrasesController < ApplicationController
	def index
		@phrases = Phrase.where(user_id: params[:id])
	end

	def new
		@phrases = Phrase.new
		@phrase.save!
	end

	def create
	end

	def edit
		@phrases = Phrase.where(user_id: params[:id]).first
	end

	def update
	end

end

private

def user_params
	params.require(:user).permit(:first_name, :last_name, :address, :email)
end