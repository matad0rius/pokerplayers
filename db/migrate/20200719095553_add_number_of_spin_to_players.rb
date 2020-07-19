class AddNumberOfSpinToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :number_of_spins, :integer
  end
end
