class PhrasesController < ApplicationController
	def index
		@phrase = Phrase.new
		@phrase.save!
	end

	def new
	end

	def create
	end

	def update
	end

end