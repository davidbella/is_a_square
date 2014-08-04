require_relative '../spec_helper'

require_relative '../../lib/point'

describe Point do
  describe 'creating a point' do
    it 'can be created and given an x and y location' do
      point = Point.new(1, 2)

      expect(point).to be_a(Point)
    end
  end

  context 'instance methods' do
    let(:x_loc) { 1 }
    let(:y_loc) { 2 }
    let(:point) { Point.new(x_loc, y_loc) }

    describe '#x_location' do
      it 'gives the x location of the point' do
        expect(point.x_location).to eq x_loc
      end
    end

    describe '#y_location' do
      it 'gives the y location of the point' do
        expect(point.y_location).to eq y_loc
      end
    end
  end
end
