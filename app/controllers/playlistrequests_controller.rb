class PlaylistrequestsController < ApplicationController
  def index
    @playlistrequests = PlaylistRequest.all
  end

  def show
  end

  def new
    @playlistrequest = PlaylistRequest.new
  end
end