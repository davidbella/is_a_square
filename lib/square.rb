class Square
  def initialize(points)

  end

  class << self
    def new_from_file(file)
      File.open(file)
      Square.new([])
    end
  end
end
