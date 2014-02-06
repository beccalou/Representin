class PhrasesController < ApplicationController
	def index
		@phrases = Phrase.where(user_id: params[:id])
	end

	def new
		@phrase = Phrase.new
		@user = current_user
	end

	def create
		@phrase = Phrase.new(phrase_params)

    	if @phrase.save
      	flash[:notice] = 'Added a new phrase!'
      	redirect_to user_path(current_user.id)
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
		@phrase.assign_attributes(phrase_params)
    	if @phrase.save
      	flash[:notice] = 'Phrase updated!'
      	redirect_to user_path(current_user.id)
    	else
      	flash.now[:errors] = @phrase.errors.full_messages
      	render :new
			end
	end

	def edit
		@phrase = Phrase.find(params[:id])
		@user = current_user
		@phrase.save!
		@user.save!
	end

	def destroy
		@phrase.destoy if @phrase == Phrase.find(params[:id]) &&
			@user = current_user
		redirect_to user_path(current_user.id)
	end

end

private

def phrase_params
	params.require(:phrase).permit(:phrase, :user_id)
end