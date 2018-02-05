class ActorsController < ApplicationController
  def index
    @actors = Actor.all

    render("actor_templates/index.html.erb")
  end

  def show
    @actor = Actor.find(params["id_to_display"])

    render("actor_templates/show.html.erb")
  end

  def new_form
    render("actor_templates/new_form.html.erb")
  end

  def create_row
    @actor = Actor.new

    @actor.dob = params["dob"]
    @actor.name = params["name"]
    @actor.image_url = params["image_url"]
    @actor.save

    redirect_to("/actors", :notice => "Actor created successfully.")
  end

  def edit_form
    @actor = Actor.find(params["prefill_with_id"])

    render("actor_templates/edit_form.html.erb")
  end

  def update_row
    @actor = Actor.find(params["id_to_modify"])

    @actor.dob = params["dob"]
    @actor.name = params["name"]
    @actor.bio = params["bio"]
    @actor.image_url = params["image_url"]
    @actor.save

    redirect_to("/actors/#{@actor.id}", :notice => "Actor updated successfully.")
  end

  def destroy_row

    @actor.destroy

    redirect_to("/actors", :notice => "Actor deleted successfully.)
  end
end
