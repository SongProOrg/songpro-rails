class HomeController < ApplicationController
  def index
    @content = <<~EOF
      @title=Under the Boardwalk
      @artist=The Drifters

      # Intro

      | [G] | [G] | [G] | [G] |

      # Verse 1

      Oh, when the [G]sun beats down and burns the tar up on the [D]roof
      And your [D]shoes get so hot you wish your tired feet were fire-[G]proof
      Under the [C]boardwalk, down by the [G]sea, yeah
      On a [G]blanket with my baby [D] is where I'll [G]be

      # Chorus 1

      (Under the [Em]boardwalk) Out of the sun
      (Under the [D]boardwalk) We'll be havin' some fun
      (Under the [Em]boardwalk) People walking above
      (Under the [D]boardwalk) We'll be making love
      Under the [Em]board-[Em]walk ([Em]board-[Em]walk!)
    EOF

    @song = SongPro.parse(@content)
  end
end
