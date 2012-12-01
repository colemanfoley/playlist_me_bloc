class SuggestionsController < ApplicationController
	def create
		@suggestion =  current_user.suggestions.build(params[:suggestion])
		@playlist_request = @suggestion.playlist_request
    
	if @suggestion.save
      redirect_to @playlist_request
    else
      render 'playlist_request/show'
    end

	end

	def destroy
		@suggestion = Suggestion.find(params[:id])
		@playlist_request = @suggestion.playlist_request

		if @suggestion.destroy
			redirect_to @playlist_request
		else
			redirect_to @playlist_request
	end

end
