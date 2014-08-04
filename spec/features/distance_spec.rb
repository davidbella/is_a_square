require_relative '../spec_helper'
require_relative '../../lib/point'

require_relative '../../lib/distance'

describe Distance do
  describe '.between' do
    let(:first_point)  { Point.new(3, 0) }
    let(:second_point) { Point.new(0, 4) }
    let(:third_point)  { Point.new(1, 5) }

    it 'returns the distance between two point objects when a integer' do
      expect(Distance.between(first_point, second_point)).to eq 5
    end

    it 'returns the distance between two point objects when a float' do
      expect(Distance.between(second_point, third_point)).to eq 1.4142135623730951
    end
  end
end
