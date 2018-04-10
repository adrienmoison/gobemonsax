class MusicsController < ApplicationController

  MUSICS = {
    1 => { track: "I love Paris", author: "Guetta", category: "House" },
    2 => { track: "kiki", author: "adri", category: "techno" },
    3 => { track: "I love Paris", author: "hello", category: "House" },
    4 => { track: "I love Paris", author: "bonjour", category: "House" },
  }

  def index
    @musics = MUSICS
  end

end
