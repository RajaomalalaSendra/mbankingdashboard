class DashboardsController < ApplicationController
  before_action :authenticate_user!
  include HomeHelper
  def index
    @dashboards = Dashboard.all
  end
  def new
  	@dashboard = Dashboard.new
  end

  def create
     @dashboard = Dashboard.new(dashboard_params)
     if @dashboard.save
			redirect_to dashboards_path
	 else
	 	redirect_to dashboards_path,flash:{danger:"une erreur s'est produite"} 
	 end
  end

  def show
    @dashboard = Dashboard.find(params[:id])
  end

  def edit
    @dashboard = Dashboard.find(params[:id])
  end
  def update
		@dashboard = Dashboard.find(params[:id])
		@dashboard.update(dashboard_params)
		@dashboard.save
		@dashboard.errors.full_messages.each do |message|
			p message
		end
		redirect_to dashboard_path(@dashboard)
	end
  private
  def dashboard_params
		params.permit(:nom, :cartier, :operateur,:numero ,:ref, :net, :brut, :frais_operateur, :autre_frais, :user_id)
	end
end
