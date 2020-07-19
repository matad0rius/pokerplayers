class AddRoiToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :roi, :decimal
  end
end
