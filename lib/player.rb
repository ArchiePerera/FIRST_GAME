class Player
    attr_accessor :name, :life_points

#Initializing
  def initialize(name)
    @name = name
    @life_points = 10
  end

#Showing state of player
  def show_state
    "#{name} a #{@life_points} de points de vie." 
  end

#Life of player
  def gets_damage(compute_damage)
    @life_points = @life_points - compute_damage
    if @life_points > 0
      puts "#{@name} a #{@life_points} points de vie."
    else 
      puts "#{@name} a été tué."
    end
    gets.chomp
  end

#Battle
  def attacks(player)
    puts "le joueur #{@name} attaque #{player.name}"
     damage = compute_damage
    puts "le joueur #{@name} inflige #{damage} de dégâts à #{player.name}."
    return player.gets_damage(damage)
  end

#Damage
  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

#Initializing
  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
  end

#Showing state of player
  def show_state
    puts "#{@name} a #{@life_points} de points de vie et une arme de niveau #{@weapon_level}." 
  end

#Damage
  def compute_damage
    rand(1..6) * @weapon_level
  end

#About new weapon
  def search_weapon
    weapon_level = rand(1..6)
    puts "Tu as une arme de niveau #{weapon_level}"
     if weapon_level <= @weapon_level 
       puts "M@*#$... Elle n'est pas mieux que celle que j'ai."
     else
       puts "Elle est mieux que ton arme actuelle."
     end
   end

#About Health pack
   def search_health_pack
    result = rand(1..6)
      if result == 1
        puts "Tu n'as rien trouvé..."
      elsif result.between?(2, 5)
        puts "Bravo, tu as trouvé un pack de +50 points de vie"
          if @life_points + 50 >= 100
             return @life_points = 100
          else
             return @life_points = @life_points + 50
          end
      else
        puts "Bravo, tu as trouvé un pack de +80 points de vie."
          if @life_points + 80 >= 100
             return @life_points = 100
          else
             return @life_points = @life_points + 80 
          end
      end
   end
end



