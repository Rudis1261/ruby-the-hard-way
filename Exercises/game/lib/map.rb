class Map
  @@scenes = {
      'intro' => Intro.new(),
      'city' => City.new(),
      'tavern' => Tavern.new(),
      'pirate_ship' => PirateShip.new(),
      'gold_mine' => GoldMine.new(),
      'ship_wreck' => ShipWreck.new(),
      'death' => Death.new(),
      'finish' => Finish.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    @@scenes[scene_name]
  end

  def opening_scene
    next_scene(@start_scene)
  end
end