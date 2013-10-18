class AppsController < ApplicationController
  def index
    @apps = App.all
    render json: {apps: App.to_json(@apps)}
  end

  def show
    @app = App.find(params[:id])
    render json: {app: @app.to_json}
  end
end
