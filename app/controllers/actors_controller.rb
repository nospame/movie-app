class ActorsController < ApplicationController
  def lookup
    actor_pick = Actor.find(params[:id])
    render json: {message: "Hi im a message", actor: actor_pick}
  end
end
