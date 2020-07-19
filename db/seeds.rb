# frozen_string_literal: true

Player.destroy_all
Establo.destroy_all

NUMBER_OF_ESTABLOS = 4
PLAYERS_PER_ESTABLO = 20

NUMBER_OF_ESTABLOS.times do
  establo = Establo.create(name: Faker::Esport.unique.team)

  PLAYERS_PER_ESTABLO.times do
    player = establo.players.create(
      name: Faker::FunnyName.unique.name,
      number_of_spins: rand(200..650000).to_i,
      roi: rand(-10..20),
      total_winnings: rand(1..200)
    )
    # downloaded_avatar = open(URI.escape("https://source.unplash.com/600x600/?#{[player.name, establo.name].join(',')}"))
    # player.avatar.attach(io: downloaded_avatar, filename: "m-#{[player.name, establo.name].join('-')}.jpg")
    # sleep(1) 
  end
end

puts "Created #{Establo.count} Establos."
puts "Created #{Player.count} PLayers."
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?