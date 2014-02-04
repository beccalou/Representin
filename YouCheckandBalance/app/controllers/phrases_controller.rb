class PhrasesController < ApplicationController
	def index
		@phrases = Phrase.where(user_id: params[:id])
	end

	def new
		@phrases = Phrase.new
		@phrase.save!
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

	def edit
		@phrases = Phrase.where(user_id: params[:id]).first
	end

	def update
	end

end

private

def phrase_params
	params.require(:phrase).permit(:phrase)
end