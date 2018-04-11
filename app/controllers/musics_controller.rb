class MusicsController < ApplicationController

  def index
    @musics = Music.all
  end

  def show
    @music = Music.find(params[:id])
  end

  def new
    @music = Music.new
  end

  def create
  end

  def edit
    @music = Music.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
