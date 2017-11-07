class Engine
  def initialize(scene)
    @map = scene
  end

  def play()
    current_scene = @map.opening_scene()
    last_scene = @map.next_scene('finish')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @map.next_scene(next_scene_name)
    end

    # Be sure to print out the last scene
    current_scene.enter()
  end
end