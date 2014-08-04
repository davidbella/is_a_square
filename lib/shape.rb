require_relative 'point'

class Shape
  attr_reader :points

  def initialize(points)
    @points = points
  end

  class << self
    def new_from_file(file)
      file = File.open(file)

      points = file.collect do |line|
        line.chomp!
        line_pieces = line.split(',')

        Point.new(line_pieces[0].to_i, line_pieces[1].to_i)
      end

      Shape.new(points)
    end
  end
end
