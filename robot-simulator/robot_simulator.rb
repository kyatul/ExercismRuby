# Exercism Ruby - Robot Simulator
class Robot
  attr_reader :bearing
  DIRECTIONS = [:north, :east, :south, :west]

  def orient(direction)
    validate_direction(direction)
    direction_index(direction)
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    case DIRECTIONS[@bearing]
    when :north
      @y += 1
    when :east
      @x += 1
    when :south
      @y -= 1
    when :west
      @x -= 1
    end
  end

  def bearing
    DIRECTIONS[@bearing]
  end

  def turn_right
    @bearing = (@bearing + 1) % DIRECTIONS.size
  end

  def turn_left
    @bearing = (@bearing - 1) % DIRECTIONS.size
  end

  def direction_index(direction)
    @bearing = DIRECTIONS.index(direction)
  end

  def validate_direction(direction)
    unless direction == :east || direction == :west ||
           direction == :north || direction == :south
      raise ArgumentError
    end
  end
end

class Simulator
  INSTRUCTIONS = { 'L' => :turn_left, 'R' => :turn_right, 'A' => :advance }

  def instructions(commands)
    result = []
    commands.split('').each do |command|
      result.push(INSTRUCTIONS[command])
    end
    result
  end

  def place(robot, **robot_detail)
    robot.at(robot_detail[:x], robot_detail[:y])
    robot.orient(robot_detail[:direction])
  end

  def evaluate(robot, commands)
    robot_commands = instructions(commands)
    robot_commands.each do |command|
      execute_command(robot, command)
    end
  end

  def execute_command(robot, command)
    case command
    when :turn_left
      robot.turn_left
    when :turn_right
      robot.turn_right
    when :advance
      robot.advance
    end
  end
end
