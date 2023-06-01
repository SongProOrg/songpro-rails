module SongsHelper

  def formatted_chord(chord)
    chord.gsub("sus4", "sus<sup>4</sup>").gsub("sus2", "sus<sup>2</sup>")
  end
end
