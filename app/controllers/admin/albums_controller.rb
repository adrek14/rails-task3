
class Admin::AlbumsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @album = Artist.find(params[:artist_id]).albums.new
  end

  def create
    @artist = Artist.find( params[:artist_id] )
    @album = @artist.albums.new( params[:album] )
    if @album.save
      redirect_to admin_artist_path( @artist )
    else
      render :action => "new"
    end
  end
  
  def destroy
    @album = Album.find( params[:id] )
    Album.delete( @album )
    @artist = Artist.find( params[:artist_id] )
    redirect_to admin_artist_path( params[:artist_id] ) #@artist ) 
  end
end
