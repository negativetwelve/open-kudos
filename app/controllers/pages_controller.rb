class PagesController < ApplicationController
  def index
    @app = App.find(params[:app_id])
    render json: {app: @app.to_json}
  end

  def find_or_create
    @page = Page.find_or_create_by(url: params[:url], app_id: params[:app_id])
    render json: {page: @page.to_json}
  end
end
