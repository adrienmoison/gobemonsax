class MusicsController < ApplicationController

  MUSICS = {
    1 => { track: "I love Paris", author: "Guetta", category: "House" },
    2 => { track: "kiki", author: "adri", category: "Techno" },
    3 => { track: "I love Paris", author: "hello", category: "House" },
    4 => { track: "I love Paris", author: "bonjour", category: "House" },
  }

  def index
    @musics = MUSICS.select do |id, music|
      music[:category] == params[:style]
    end
  end
end
