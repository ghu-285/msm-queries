class DirectorsController < ApplicationController

  def show
    render "directors_templates/all"
  end

  def young
    @youngest_director = Director.where.not({:dob => nil}).order({:dob => :asc}).at(-1)
    render({ :template => "directors_templates/young"})
  end

  def old
    @eldest_director = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render "directors_templates/old"
  end

  def details
    @director = Director.where({:id => params.fetch(:director).to_i}).at(0)
    @movies = Movie.where({:director_id => params.fetch(:director).to_i})
    render "directors_templates/director"
  end

end
