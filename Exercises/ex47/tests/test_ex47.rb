require "ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase
  def test_room()
    gold = Room.new("GoldRoom",
                    """This room has gold in it you can grab. There's a
                door to the north.""")

    assert_equal("GoldRoom", gold.name)
    assert_equal({}, gold.paths)
  end

  def test_room_paths()
    center = Room.new("Center", "Test room in the center")
    north = Room.new("North", "Test room in the north")
    south = Room.new("South", "Test room in the south")

    center.add_paths({'north'=> north, 'south' => south})
    assert_equal(north, center.go('north'))
    assert_equal(south, center.go('south'))
  end

  def test_map()
    start = Room.new("Start", "You can go west and down a hole.")
    west = Room.new("Trees", "There are trees here, you can go east.")
    down = Room.new("Dungeon", "It's dark down here, you can go up.")

    start.add_paths({'west' => west, 'down' => down})
    west.add_paths({'east' => start})
    down.add_paths({'up' => start})

    assert_equal(west, start.go('west'))
    assert_equal(start, start.go('west').go('east'))
    assert_equal(start, start.go('down').go('up'))
  end

  def test_game()
    intro = Room.new('intro', "The year what not, work is broken. You start to tavern")
    death = Room.new('death', "You die")
    finish = Room.new('finish', "You are a legend")

    tavern = Room.new('tavern', "Where you get work")
    city = Room.new('city', "You go looking for a missing husband")
    ship_wreck = Room.new('ship_wreck', "You go to the site of a recently wrecked ship")
    pirate_ship = Room.new('pirate_ship', "Do you join a pirate crew and leave your lonely life behind?")
    gold_mine = Room.new('gold_mine', "Loot? Where?")

    intro.add_paths({'tavern' => tavern})
    tavern.add_paths({'city' => city})
    tavern.add_paths({'gold_mine' => gold_mine})
    tavern.add_paths({'ship_wreck' => ship_wreck})
    tavern.add_paths({'pirate_ship' => pirate_ship})
    tavern.add_paths({'death' => death})

    city.add_paths({'city' => city})
    city.add_paths({'death' => death})
    city.add_paths({'finish' => finish})

    gold_mine.add_paths({'death' => death})
    gold_mine.add_paths({'tavern' => tavern})

    ship_wreck.add_paths({'death' => death})
    ship_wreck.add_paths({'tavern' => tavern})

    pirate_ship.add_paths({'finish' => finish})
    pirate_ship.add_paths({'tavern' => tavern})
    pirate_ship.add_paths({'death' => death})

    assert_equal(tavern, intro.go('tavern'))

    assert_equal(city, tavern.go('city'))
    assert_equal(gold_mine, tavern.go('gold_mine'))
    assert_equal(ship_wreck, tavern.go('ship_wreck'))
    assert_equal(pirate_ship, tavern.go('pirate_ship'))
    assert_equal(death, tavern.go('death'))

    assert_equal(death, city.go('death'))
    assert_equal(city, city.go('city'))
    assert_equal(finish, city.go('finish'))

    assert_equal(death, gold_mine.go('death'))
    assert_equal(tavern, gold_mine.go('tavern'))

    assert_equal(death, ship_wreck.go('death'))
    assert_equal(tavern, ship_wreck.go('tavern'))

    assert_equal(finish, pirate_ship.go('finish'))
    assert_equal(tavern, pirate_ship.go('tavern'))
    assert_equal(death, pirate_ship.go('death'))
  end
end