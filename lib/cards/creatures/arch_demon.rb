class ArchdemonofGreed < Creature

  def initialize(owner=nil)
    super(owner)
    @name = 'Archdemon of Greed'
    @strength = 9
    @toughness = 9
    @cost = 10 #
    @description =  "Flying, trample   At the beginning of your upkeep, sacrifice a Human. If you can't, tap Archdemon of Greed and it deals 9 damage to you."
    @img = "http://1.bp.blogspot.com/-AztohfgbDiE/UJOHfrQ9O4I/AAAAAAAABRM/iPjcA7FwhUc/s320/shadow demon_dota2.jpg"
    @mtg_id = 227405
    add_abilities [ Flying, Trample]
  end

end
