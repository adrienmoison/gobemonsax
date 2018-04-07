class MusicsController < ApplicationController

  MUSICS = {
    1 => { track: "I love Paris", author: "Guetta", category: "House" }
    2 => { track: "Defected in the house", author: "Carl Cox", category: "Techno" }
  }

  def index
    @musics = MUSICS
  end

end
