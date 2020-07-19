ActiveAdmin.register Player do
  permit_params :name, :establo_id, :number_of_spins, :roi, :total_winnings
  
end
