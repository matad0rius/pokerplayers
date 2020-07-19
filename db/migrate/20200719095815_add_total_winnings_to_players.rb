class AddTotalWinningsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :total_winnings, :integer
  end
end
