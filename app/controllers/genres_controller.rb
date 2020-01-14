class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @artist = Genre.find(params[:id])
  end

  def update
    @genre = Genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
