  require 'pry'
  require 'bundler'
  Bundler.require

  require_relative 'lib/game'
  require_relative 'lib/player'

  player1 = Player.new("José")
  player2 = Player.new("Paulette")

 while (player1.life_points > 0) and (player2.life_points > 0)
   puts "Voici l'état"
   puts player1.show_state
   puts player2.show_state

   puts "attaquons"
   player1.attacks(player2)
   if player2.life_points <=0
     break
   end

   player2.attacks(player1)
   if player1.life_points <= 0
    break
   end
end




binding.pry




