require_relative '../spec_helper'
require_relative '../../lib/shape'

describe Shape do
  describe 'creating a shape' do
    let(:points) { [] }
    it 'can be passed in an array of points to build the shape' do
      shape = Shape.new(points)

      expect(shape).to be_a(Shape)
    end
  end

  describe '.new_from_file' do
    it 'reads a file from the file system' do
      expect(File).to receive(:open)

      Shape.new_from_file('spec/fixtures/shape')
    end

    it 'creates and returns a new shape object' do
      shape = Shape.new_from_file('spec/fixtures/shape')

      expect(shape).to be_a(Shape)
    end
  end
end
