class PackageItemsController < ApplicationController

  # GET /packages/1/package_item/1
  # GET /packages/1/package_item/1.json
  def show
  	@package = Package.find(params[:package_id])
  	@package_item = PackageItem.find(params[:id])
  end

end