class PlaylistrequestsController < ApplicationController
  def index
    @playlistrequests = PlaylistRequest.all
  end

  def show
  end

  def new
    @playlistrequest = PlaylistRequest.new
  end

  def create
    @playlistrequest = PlaylistRequest.new(params[:user])
  end
end