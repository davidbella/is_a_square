class Distance
  class << self
    def between(first_point, second_point)
      # standard distance formula
      Math.sqrt((second_point.x_location - first_point.x_location)**2 + (second_point.y_location - first_point.y_location)**2)
    end
  end
end
