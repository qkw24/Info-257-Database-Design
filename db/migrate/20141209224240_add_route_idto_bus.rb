class AddRouteIdtoBus < ActiveRecord::Migration
  def change
    add_column :buses, :route_id, :integer
  end

end
