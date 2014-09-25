class Dragon < Creature

  def initialize(owner=nil)
    super(owner)
    @name = "Green Dragon"
    @strength = 4
    @toughness = 4
    @cost = 6
    @img = "http://www.literarilycreative.com/wp-content/uploads/2013/03/The_green_dragon_by_Amisgaudi.jpg"
    add_abilities [ Flying ]
  end

end
