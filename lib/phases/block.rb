class BlockPhase < Phase

  def initialize(turn=nil)
    super(turn)
    @name = "Block"
  end

  def execute
  end

  def auto
    world.defending_player.creatures.select { |c| c.can? (Block) }.size == 0
  end

end