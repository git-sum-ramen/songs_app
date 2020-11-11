class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render 'index.json.jb'
  end

  def show
    @song = Song.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @song = Song.new(
      artist:  params[:artist],
      album: params[:album],
      year: params[:year],
      title: params[:title]
    )
    @song.save
    render 'show.json.jb'
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title]
    @song.album = params[:album]
    @song.year = params[:year]
    @song.artist = params[:artist]
    @song.save
    render 'show.json.jb'
  end
end
