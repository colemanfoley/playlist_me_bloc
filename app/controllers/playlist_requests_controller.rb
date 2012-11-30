class PlaylistRequestsController < ApplicationController
  def index
    @playlist_requests = PlaylistRequest.all
  end

  def new
    @playlist_request = PlaylistRequest.new
  end

  def show
    @playlist_request = PlaylistRequest.find(params[:id])
    #@suggestion = Suggestion.new
		#@suggestion.playlistrequest_id = params[:id]
  end

  def edit
  end

  def create
    @playlist_request = PlaylistRequest.new(params[:playlist_request])
    if @playlist_request.save
      redirect_to @playlist_request
    else
      render :edit
    end

  end
end
