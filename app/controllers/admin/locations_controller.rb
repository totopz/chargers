class Admin::LocationsController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :check_admin
  before_action :set_location, only: %i[ show edit update destroy ]

  # GET /admin/locations or /admin/locations.json
  def index
    @locations = Location.all
  end

  # GET /admin/locations/1 or /admin/locations/1.json
  def show
  end

  # GET /admin/locations/new
  def new
    @location = Location.new
  end

  # GET /admin/locations/1/edit
  def edit
  end

  # POST /admin/locations
  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to admin_location_path(@location), notice: "Location was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/locations/1
  def update
    if @location.update(location_params)
      redirect_to admin_location_path(@location), notice: "Location was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /admin/locations/1
  def destroy
    @location.destroy!

    redirect_to admin_locations_path, status: :see_other, notice: "Location was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = Location.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def location_params
    params.expect(location: [ :title, :latitude, :longitude ])
  end

  def check_admin
    redirect_to root_path, alert: "You are not authorized to view this page" unless current_user.admin?
  end
end
