class Admin::DashboardController < ApplicationController
  layout "admin"

  before_action :authenticate_user!  # Ensure the user is logged in
  before_action :authorize_admin!    # Ensure the user is an admin

  def index
    # Your admin dashboard logic here
  end

  private

  def authorize_admin!
    redirect_to root_path, alert: "You are not authorized to access this page." unless current_user.admin?
  end
end
