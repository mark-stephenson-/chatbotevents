# Handles logic for the events controller
class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :password_check, only: [:edit, :update, :destroy, :new]

  # GET /events
  def index
    @events = Event.all.order(start_date: :asc)
  end

  # GET /events/1
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html do
          redirect_to @event, notice: 'Event was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /events/1
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html do
          redirect_to @event, notice: 'Event was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    respond_to do |format|
      format.html do
        redirect_to events_url, notice: 'Event was successfully destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  def password_check
    redirect_to action: :index unless params[:password] == 'trustno1'
  end

  # Never trust parameters from the scary internet
  def event_params
    params.require(:event).permit(
      :title, :category_id, :start_date, :end_date,
      :teaser, :description, :cover_img, :street_no, :street_name, :floor,
      :town, :region, :postcode, :country, :venue_name, :password
    )
  end
end
