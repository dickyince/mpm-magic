class  Lighting < Instant


  def initialize(owner=nil)
    super(owner)
    @name = 'Lighting'
    @cost = 1 # 5B
    @description =  "Deals 3 dommages to target creature"
    @img = "http://images2.layoutsparks.com/1/44124/nerve-confusion-red-lightning.gif"
  end

  def play!
    super
    player.target_action = TargetAction.new(self, self)
  end

  def can_target(target)
    target.is_a? Creature
  end

  def can_be_played
    owner.mana_pool.can_pay?(self.cost) && \
    [player.opponent.creatures, player.creatures ].flatten.any?{ |p| self.can_target(p) }
  end

  def execute_with_target!(target)
    super(target)
    target.hit! 3
  end


end
