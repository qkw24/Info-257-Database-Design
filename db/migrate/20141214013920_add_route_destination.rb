class AddRouteDestination < ActiveRecord::Migration
  def change
    add_column :routes, :destination, :string
  end

end
