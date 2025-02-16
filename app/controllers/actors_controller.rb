class ActorsController < ApplicationController
  def show
    render "actors_templates/all"
  end

  def details
    @actor = Actor.where({:id => params.fetch(:actor).to_i}).at(0)
    @characters = Character.where({:actor_id => params.fetch(:actor).to_i})
    render "actors_templates/actor"
  end
end
