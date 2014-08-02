class Shape
  attr_reader :points

  def initialize(points)
    @points = points
  end

  class << self
    def new_from_file(file)
      File.open(file)
      Shape.new([])
    end
  end
end
