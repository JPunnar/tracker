# frozen_string_literal: true

class AssetsController < ActionController::Base
  def index
    @assets = Asset.all
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def update
    # binding.break
    asset = Asset.find(params[:id])
    asset.update(asset_params)
    redirect_to root_path, notice: asset.in_location? ? 'The asset is in location!' : 'The asset is not in location'
  end

  private

  def asset_params
    params.require(:asset).permit(:latitude, :longitude)
  end
end
