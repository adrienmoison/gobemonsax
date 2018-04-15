class Music < ApplicationRecord

  def to_param
    "#{id}-#{track.parameterize}-#{artist.parameterize}"
  end
end
