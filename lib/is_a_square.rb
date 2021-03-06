require_relative 'distance'

class IsASquare
  class << self
    def valid?(shape)
      four_sided_shape?(shape) && all_sides_equal_length?(shape) && all_diagonals_equal_length?(shape)
    end

    private
      def four_sided_shape?(shape)
        shape.points.count == 4
      end

      def all_sides_equal_length?(shape)
        first_side_length = Distance.between(shape.points.last, shape.points.first)

        shape.points.each_cons(2) do |side_points|
          if Distance.between(side_points[0], side_points[1]) != first_side_length
            return false
          end
        end

        true
      end

      def all_diagonals_equal_length?(shape)
        return false unless four_sided_shape?(shape)

        first_diagonal_length = Distance.between(shape.points[0], shape.points[2])
        second_diagonal_length = Distance.between(shape.points[1], shape.points[3])

        first_diagonal_length == second_diagonal_length
      end
  end
end
