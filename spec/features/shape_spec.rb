require_relative '../spec_helper'
require_relative '../../lib/shape'

require_relative '../../lib/point'

describe Shape do
  describe 'creating a shape' do
    let(:points) { [] }

    it 'can be passed in an array of points to build the shape',
       'the order of the points informs the order of the shape' do
      shape = Shape.new(points)

      expect(shape).to be_a(Shape)
    end
  end

  describe '.new_from_file' do
    it 'reads a file from the file system' do
      expect(File).to receive(:open).and_call_original

      Shape.new_from_file('spec/fixtures/shape')
    end

    it 'creates and returns a new shape object' do
      shape = Shape.new_from_file('spec/fixtures/shape')

      expect(shape).to be_a(Shape)
    end

    it 'sets the points based on what was found in the file' do
      shape = Shape.new_from_file('spec/fixtures/shape')

      expect(shape.points.count).to eq 4
    end
  end

  describe '#points' do
    let(:first_point)  { Point.new(1, 2) }
    let(:second_point) { Point.new(2, 2) }
    let(:third_point)  { Point.new(2, 1) }
    let(:fourth_point) { Point.new(1, 1) }

    let(:points) { [ first_point, second_point, third_point, fourth_point ] }
    let(:shape) { Shape.new(points) }

    it 'has an accessible array of points that make up the shape' do
      expect(shape.points).to be_a(Array)
      expect(shape.points).to eq points
    end
  end
end
