class CollidableShape
  attr_accessor :opts, :actor, :radius

  attr_reader :cw_world_points, :cw_local_points, :cw_world_lines, :cw_world_edge_normals

  def initialize(actor, options)
    @opts = options
    @actor = actor

    @x_offset = opts[:x_offset]
    @y_offset = opts[:y_offset]
    @x_offset ||= 0
    @y_offset ||= 0
  end

  def actor_x
    @actor.x + @x_offset
  end

  def actor_y
    @actor.y + @y_offset
  end

  # TODO find out if this is called
  def setup
  end

  def width
    @radius * 2
  end
  alias :height :width

  def recalculate_collidable_cache
  end


end
