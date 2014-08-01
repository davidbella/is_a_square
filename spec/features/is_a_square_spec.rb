require_relative '../spec_helper'
require_relative '../../lib/is_a_square'
require_relative '../../lib/shape'

describe IsASquare do
  context 'given a valid square' do
    let(:valid_square) { Shape.new_from_file('fixtures/valid_square') }

    it 'returns true' do
      expect(IsASquare.valid?(valid_square)).to be_truthy
    end
  end
end
