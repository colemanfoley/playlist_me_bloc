class PlaylistrequestsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @playlistrequest = PlaylistRequest.new
  end
end