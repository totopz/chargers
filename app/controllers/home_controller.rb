class HomeController < ApplicationController
  def index
    @chargers = Charger.includes(:location)
  end
end
