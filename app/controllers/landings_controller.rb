class LandingsController < ApplicationController
  def index
  	@packages = Package.last(2)
  end

  def show
  	@params = params[:params]
  end
end
