class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create post_params(:name, :bio)
    redirect_to artist_path(@artist)
  end

  def show
    set_artist
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update post_params(:name, :bio)
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def post_params *arg
    params.require(:artist).permit(*arg)
  end
end
