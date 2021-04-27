class Player
    attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@life_points} de points de vie." 
  end

  def gets_damage(compute_damage)
    @life_points = @life_points - compute_damage
    if @life_points > 0
      puts "#{@name} a #{@life_points} points de vie."
    else 
      puts "#{@name} a été tué."
    end
    gets.chomp
  end

  def attacks(player)
    puts "le joueur #{@name} attaque #{player.name}"
     damage = compute_damage
    puts "le joueur #{@name} inflige #{damage} de dégâts à #{player.name}."
    return player.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end

end


