class AssetsController < ActionController::Base
  def index
    @assets = Asset.all
  end
end
