  require 'pry'
  require 'bundler'
  Bundler.require
 

  require_relative 'lib/game'
  require_relative 'lib/player'


#landind part
puts "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
puts "░░░░░░██░█░░███░██░██░░░███░███░░░░░░░░░"
puts "░░░░░░█░░█░░█░█░█░░█░░░░░█░░█░█░░░░░░░░░"
puts "░░░░░░█░░█░░█░█░██░██░░░░█░░█░█░░░░░░░░░"
puts "░░░░░░█░░█░░█░█░░█░█░░░░░█░░█░█░░░░░░░░░"
puts "░░░░░░█░░█░░█░█░░█░█░░░░░█░░█░█░░░░░░░░░"
puts "░░░░░░██░██░███░██░██░░░░█░░███░░░░░░░░░"
puts "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
puts "░░░░░░████░░███░░█████░███░██░█░░░░░░░░░"
puts "░░░░░░██░██░██░░░██░░█░░█░░██░█░░░░░░░░░"
puts "░░░░░░██░░█░███░░█████░░█░░████░░░░░░░░░"
puts "░░░░░░██░░█░█░░░░█░░░█░░█░░█░░█░░░░░░░░░"
puts "░░░░░░██░██░█░░░░█░░░█░░█░░█░░█░░░░░░░░░"
puts "░░░░░░████░░███░░█░░░█░░█░░█░░█░░░░░░░░░"
puts "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"

  puts "Quel est ton nom ?"
  print "> "


#Initialize human player
readyplayerone = gets.chomp
name_human_player = HumanPlayer.new(readyplayerone)
  

#Initialize enemies
  player1 = Player.new("José")
  player2 = Player.new("Josiane")
  enemies = [player1, player2]

#fighting part
while (name_human_player.life_points > 0) && (player1.life_points > 0) || (player2.life_points > 0)
  puts name_human_player.show_state
  puts "Quelle action veux-tu effectuer ?"
  puts "1 - chercher une meilleur arme"
  puts "2 - chercher à se soigner"
  puts "attaquer un joueur en vue :"
  puts "3 - #{player1.show_state}"
  puts "4 - #{player2.show_state}"


choice = gets.chomp.to_i

    case choice 
        when 1
            name_human_player.search_weapon
        when 2
            name_human_player.search_health_pack
        when 3
            name_human_player.attacks(player1)
        when 4
            name_human_player.attacks(player2)
    end

    

end

if name_human_player.life_points > 0 
    puts "You are the winner !!!!"
else
    puts "You looooose sucker"
end









