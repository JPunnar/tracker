require "test_helper"

class AssetTest < ActiveSupport::TestCase
  test "Location" do
    asset = Asset.new(longitude: '10', latitude: '10', name: 'test')
    assert asset.in_location? == false
  end
end
