class ActorsController < ApplicationController
  def lookup
    actor_pick = Actor.find(params[:id])
    render json: actor_pick.as_json
  end
end
