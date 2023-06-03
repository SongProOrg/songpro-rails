class SongsController < ApplicationController
  before_action :set_song, only: %i[show edit update destroy]

  # GET /songs
  def index
    @songs = Song.all.order(:title, :artist)
  end

  # GET /songs/1
  def show
    @song_pro = SongPro.parse(@song.content)
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song, notice: "Song was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      redirect_to @song, notice: "Song was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
    redirect_to songs_url, notice: "Song was successfully destroyed.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_song
    @song = Song.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def song_params
    params.require(:song).permit(:title, :artist, :content)
  end
end
