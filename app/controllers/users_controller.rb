class UsersController < ApplicationController

	def show
		@user = current_user
		@phrases = @user.phrases
  	if @phrases.count > 0
  		@legislators = Congress.legislators_locate(current_user.address)['results']
  		@word = @phrases.first.phrase
  		@bills = Congress.bills_search(:query => @word, 'history.enacted' => 'false' )['results']
  		@new_phrase = Phrase.new
  		# @phrases = Phrase.where(user_id: params[:id])
  	else
  		redirect_to new_user_phrase_path(current_user)
  	end
	end

	def edit
		@user = User.find(current_user)
	end

	def update
		@user = User.find(current_user.id)
		@user.assign_attributes(user_params)
  	if @user.save
    	flash[:notice] = 'Address Updated!'
    	redirect_to user_path(current_user.id)
  	else
    	flash.now[:errors] = @user.errors.full_messages
    	render :edit
  	end
	end

end

private

def user_params
	params.require(:user).permit(:first_name, :last_name, :address, :email)
end