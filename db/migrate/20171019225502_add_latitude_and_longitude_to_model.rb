class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration[5.1]
  def create
    add_column :models, :latitude, :float
    add_column :models, :longitude, :float
  end
end
