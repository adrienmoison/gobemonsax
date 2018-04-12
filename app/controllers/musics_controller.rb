class MusicsController < ApplicationController

  before_action :set_music, only: [:show, :edit, :update, :destroy]

  def index
    @musics = Music.all
  end

  def show
  end

  def new
    @music = Music.new
  end

  def create
    Music.create(params[:music_params])
    redirect_to musics_path
  end

  def edit
  end

  def update
    @music.update(params[:music_params])
    redirect_to musics_path
  end

  def destroy
    @music.destroy
    redirect_to musics_path
  end

  def set_music
    @music = Music.find(params[:id])
  end

  private

  def music_params
    params.require(:restaurant).permit(:url, :track, :artist, :category)
  end

end
