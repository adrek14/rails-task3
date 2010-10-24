
class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find( params[:id] )
  end
  
  def new
    @artist = Artist.new
  end

  def create
    #@artist = Artist.new
    # artist = Artist.new
    Artist.create( params[:artist] )
    redirect_to artists_path
  end
end
