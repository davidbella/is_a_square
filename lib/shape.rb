class Shape
  def initialize(points)

  end

  class << self
    def new_from_file(file)
      File.open(file)
      Shape.new([])
    end
  end
end
