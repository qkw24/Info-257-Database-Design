class AddBusLicensePlate < ActiveRecord::Migration
  def change
    add_column :buses, :license_plate, :string
  end

end
