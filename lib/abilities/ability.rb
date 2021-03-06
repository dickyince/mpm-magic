class Ability

  attr_accessor :card , :permanent
  def initialize(card, permanent=true)
    @card = card
    @permanent = permanent
  end

  def permanent?
    @permanent
  end

  def player
    card.player
  end


  def opponent
    card.player.opponent
  end


  def id
     self.class.name.underscore.to_sym
  end


  def name
     self.class.name.underscore.gsub('_', ' ').gsub(' ability', '').humanize
  end

  def img
    "#{id}.png"
  end


  def description
    ""
  end

  def to_sym
    id
  end

  def to_s
    id
  end

  def self.to_sym
    self.name.underscore.to_sym
  end

  def inspect
    "#<#{self.class.name}:#{object_id} owner=#<#{card.class.name}:#{card.object_id}> >"
  end


end
