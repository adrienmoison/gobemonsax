class MusicsController < ApplicationController

  MUSICS = {
    1 => { track: "I love Paris", author: "Guetta", category: "House" },
    2 => { track: "kiki", author: "adri", category: "Techno" },
    3 => { track: "I love Paris", author: "hello", category: "House" },
    4 => { track: "I love Paris", author: "bonjour", category: "House" },
  }

  def index
    if params[:style].blank?
      @musics = MUSICS
    else
      @musics = MUSICS.select do |id, music|
        music[:category] == params[:style]
      end
    end
  end

  def show
    id = params[:id].to_i
    @music = MUSICS[id]
  end

  def create
  end
end
