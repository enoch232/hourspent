class LanguagesController < ApplicationController
	def index
		@languages = Language.all
	end
	def new 
		@language = Language.new

	end
	def create
		@language = Language.new(languages_params)
		if @language.save
			redirect_to root_path
		else
			render :new
		end
	end
	def increase
		@language = Language.find(params[:language_id])
		@language.hours = @language.hours + 1
		@language.save
		redirect_to root_path
	end
	def decrease
		@language = Language.find(params[:language_id])
		if @language.hours > 0
			@language.hours = @language.hours - 1
			@language.save
			redirect_to root_path
		else
			redirect_to root_path
		end

		
	end

	#def destroy
	#end
	#private
	def languages_params
		params.require(:language).permit(:name, :hours)
	end
end
