ActiveAdmin.register Player do
  permit_params :name, :establo_id, :number_of_spins, :roi, :total_winnings, :avatar
  

  # Formtastic!
  form do |f|
    f.semantic_errors # show errors
    f.inputs          # build an input field for every attribute
    f.inputs do 
      f.input :image, as: :file
    end
    f.actions         # adds the submit and cancel buttons
  end

end
