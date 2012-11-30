class PlaylistRequestsController < ApplicationController
  def index
    @playlistrequests = PlaylistRequest.all
  end

  def new
    @playlistrequest = PlaylistRequest.new
  end

  def show
    @playlistrequest = PlaylistRequest.find(params[:id])
    #@suggestion = Suggestion.new
		#@suggestion.playlistrequest_id = params[:id]
  end

  def edit
  end

  def create
    @playlistrequest = PlaylistRequest.new(params[:playlist_request])
    if @playlistrequest.save
      redirect_to @playlistrequest
    else
      render :edit
    end

  end
end
