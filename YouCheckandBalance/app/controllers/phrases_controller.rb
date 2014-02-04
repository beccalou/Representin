class PhrasesController < ApplicationController
	def index
		@phrases = Phrase.where(user_id: params[:id])
	end

	def new
		@phrase = Phrase.create
		@user = current_user
		@phrase.save!
		@user.save!
	end

	def create
		@phrase = Phrase.new(phrase_params)

    	if @phrase.save
      	flash[:notice] = 'Added a new phrase!'
      	redirect_to @phrase
    	else
      	flash.now[:errors] = @phrase.errors.full_messages
      	render :new
    	end
	end

	def show
		@phrase = Phrase.find(params[:id])
		@user = current_user
	end

	def update
		@phrase = Phrase.find(params[:id])
		@user = current_user
	end

	def edit
		@phrases = Phrase.where(user_id: params[:id]).first
	end



end

private

def phrase_params
	params.require(:phrase).permit(:phrase)
end