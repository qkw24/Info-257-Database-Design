class ChangeColumnType < ActiveRecord::Migration
  def change
    rename_column :buses, :type, :bus_type
  end

end
