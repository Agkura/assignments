class AlbumsController < ApplicationController
  before_action :logged_in?

  def new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def edit
    @album = Album.find_by(id: params[:id])
    render :edit
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album
      @album.update_attributes(album_params)
      redirect_to album_url(@album)
    else
      flash.now[:errors] = "at least put a letter"
      render :new
    end
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    band = @album.band
    @album.destroy
    redirect_to band_url(band)
  end

  private

  def album_params
    params.require(:album).permit(:band_id, :title, :live)
  end
end
