
class AlbumsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @album = Artist.find(params[:artist_id]).albums.new
  end

  def create
    artist = Artist.find( params[:artist_id] )
    artist.albums.create( params[:album] )
    redirect_to artist
  end
end
