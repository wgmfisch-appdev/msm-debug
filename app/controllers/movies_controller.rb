class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render("movie_templates/index.html.erb")
  end

  def show
    @movie = Movie.find(params["id_to_display"])

    render("movie_templates/show.html.erb")
  end

  def new_form
    render("movie_templates/new_form.html.erb")
  end

  def create_row
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]
    @movie.save

    redirect_to("/movies", :notice => "Movie created successfully.")
  end

  def edit_form
    @movie = Movie.find(params["prefill_with_id"])

    render("movie_templates/edit_form.html.erb")
  end

  def update_row
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]

    redirect_to("/movies/#{@movie.id}", :notice => "Movie updated successfully.")
  end

  def destroy_row
    movie = Movie.find(params["id_to_remove"])

    movie.destroy

    redirect_to("/movies", :notice => "Movie deleted successfully.")
  end
end
