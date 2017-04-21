class TracksController < ApplicationController
  before_action :logged_in?
  
  def new
    render :new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def edit
    @track = Track.find_by(id: params[:id])
    render :edit
  end

  def show
    @track = Track.find_by(id: params[:id])
    render :show
  end

  def update
    @track = Track.find_by(id: params[:id])
    if @track
      @track.update_attributes(track_params)
      redirect_to track_url(@track)
    else
      flash.now[:errors] = "at least put a letter"
      render :new
    end
  end

  def destroy
    @track = Track.find_by(id: params[:id])
    album = @track.album
    @track.destroy
    redirect_to album_url(album)
  end

  private

  def track_params
    params.require(:track).permit(:album_id, :song, :lyrics, :regular)
  end
end
