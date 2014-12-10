class ChangeYearToInt < ActiveRecord::Migration
  def change
    change_column :buses, :year, :integer
  end

end
