class Admin::ChargersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :check_admin

  def index
    @chargers = Charger.all
  end

  def show
    @charger = Charger.find(params[:id])
  end

  def new
    @charger = Charger.new
    @locations = Location.all
    @plug_types = PlugType.all
  end

  def create
    @charger = Charger.new(charger_params)

    if @charger.save
      redirect_to admin_chargers_path, notice: "Charger created successfully!"
    else
      @locations = Location.all
      @plug_types = PlugType.all
      render :new
    end
  end

  def edit
    @charger = Charger.find(params[:id])
    @locations = Location.all
    @plug_types = PlugType.all
  end

  def update
    @charger = Charger.find(params[:id])
    if @charger.update(charger_params)
      redirect_to admin_chargers_path, notice: "Charger updated successfully!"
    else
      @error = @charger.errors.full_messages.join(", ")
      @locations = Location.all
      @plug_types = PlugType.all
      render :edit
    end
  end

  def destroy
    @charger = Charger.find(params[:id])
    @charger.destroy
    redirect_to admin_chargers_path, notice: "Charger deleted successfully!"
  end

  private

  def charger_params
    params.require(:charger).permit(
      :title,
      :description,
      :location_id,
      plugs_attributes: [ :id, :plug_type_id, :speed, :_destroy ])
  end

  def check_admin
    redirect_to root_path, alert: "You are not authorized to view this page" unless current_user.admin?
  end
end
