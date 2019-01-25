class GenresController < ApplicationController
  def new
   @genre = Genre.new
 end

 def create
   @genre = Genre.create post_params(:name)
   redirect_to genre_path(@genre)
 end

 def show
   set_genre
 end

 def edit
   set_genre
 end

 def update
   set_genre
   @genre.update post_params(:name)
   redirect_to genre_path(@genre)
 end

 private

 def set_genre
   @genre = Genre.find(params[:id])
 end

 def post_params *arg
   params.require(:genre).permit(*arg)
 end
end
