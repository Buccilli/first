class ActorsController < ApplicationController
  before_action :set_actor, only: %i[show edit update destroy]

  def index
    @q = Actor.ransack(params[:q])
    @actors = @q.result(distinct: true).includes(:movie,
                                                 :roles).page(params[:page]).per(10)
  end

  def show
    @role = Role.new
  end

  def new
    @actor = Actor.new
  end

  def edit; end

  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      message = "Actor was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @actor, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @actor.update(actor_params)
      redirect_to @actor, notice: "Actor was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @actor.destroy
    message = "Actor was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to actors_url, notice: message
    end
  end

  private

  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:movie_id)
  end
end
