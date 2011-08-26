class AddPositionToAdvertisers < ActiveRecord::Migration
  def change
    add_column :advertisers, :position, :integer
  end
end
