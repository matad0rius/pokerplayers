# frozen_string_literal: true

Player.destroy_all
Establo.destroy_all

NUMBER_OF_ESTABLOS = 4
PLAYERS_PER_ESTABLO = 20

NUMBER_OF_ESTABLOS.times do
  establo = Establo.create(name: Faker::Esport.unique.team)

  PLAYERS_PER_ESTABLO.times do
    establo.players.create(
      name: Faker::FunnyName.unique.name,
      number_of_spins: rand(200..650000).to_i,
      roi: rand(-10..20),
      total_winnings: ( rand(-10000..20000) )
    )
  end
end

puts "Created #{Establo.count} Establos."
puts "Created #{Player.count} PLayers."