
class Admin::ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find( params[:id] )
  end
  
  def new
    # why oh why Admin:: works???????
    # got rid of Admin::, still works and so does heroku... ????
    @artist = Artist.new
  end

  def create
    #@artist = Artist.new
    # artist = Artist.new
    @artist = Artist.new( params[:artist] )
    if @artist.save
      redirect_to admin_artists_path
    else
      render :action => "new"
    end
  end

  def edit
    @artist = Artist.find( params[:id] )
  end

  def update
    @artist = Artist.find( params[:id] )  
    if @artist.update_attributes( params[:artist] )
      redirect_to admin_artists_path
    else
      render :action => "edit"
    end
  end

  def destroy
    # warning! there is no identity check here or anything
    @artist = Artist.find( params[:id] )
    Artist.delete( @artist )
    redirect_to admin_artists_path
  end

end
