class MoviesController < ApplicationController
  def show
    render "movies_templates/all"
  end

  def details
    @movie = Movie.where({:id => params.fetch(:movie).to_i}).at(0)
    render "movies_templates/movie"
  end
end
