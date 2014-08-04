require_relative '../spec_helper'
require_relative '../../lib/is_a_square'
require_relative '../../lib/shape'

describe IsASquare do
  describe '.valid?' do
    context 'given a valid square' do
      let(:valid_square) { Shape.new_from_file('spec/fixtures/valid_square') }

      it 'returns true' do
        expect(IsASquare.valid?(valid_square)).to be_true
      end
    end

    context 'given an invalid square' do
      let(:invalid_square) { Shape.new_from_file('spec/fixtures/invalid_square') }

      it 'returns false' do
        expect(IsASquare.valid?(invalid_square)).to be_false
      end
    end
  end

  describe 'private methods' do
    describe '.has_four_sides?' do
      context 'with a zero sided shape' do
        let(:zero_sided_shape) { Shape.new( [] ) }

        it 'returns false' do
          expect(IsASquare.send(:four_sided_shape?, zero_sided_shape)).to be_false
        end
      end

      context 'with a four sided shape' do
        let(:four_sided_shape) { Shape.new_from_file('spec/fixtures/shape') }

        it 'returns true' do
          expect(IsASquare.send(:four_sided_shape?, four_sided_shape)).to be_true
        end
      end
    end

    describe '.all_sides_equal_length??' do
      context 'with all sides not equal' do
        let(:invalid_square) { Shape.new_from_file('spec/fixtures/invalid_square') }

        it 'returns false' do
          expect(IsASquare.send(:all_sides_equal_length?, invalid_square)).to be_false
        end
      end

      context 'with all sides equal' do
        let(:valid_square) { Shape.new_from_file('spec/fixtures/valid_square') }

        it 'returns true' do
          expect(IsASquare.send(:all_sides_equal_length?, valid_square)).to be_true
        end
      end
    end
  end
end
