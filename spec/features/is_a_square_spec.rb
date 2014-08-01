require_relative '../spec_helper'
require_relative '../../lib/is_a_square'
require_relative '../../lib/square'

describe IsASquare do
  context 'given a valid square' do
    let(:valid_square) { Square.new_from_file('fixtures/valid_square') }

    it 'returns true' do
      expect(IsASquare.valid?(valid_square)).to be_truthy
    end
  end
end
