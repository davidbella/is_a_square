require_relative '../spec_helper'
require_relative '../../lib/square'

describe Square do
  describe '.new_from_file' do
    it 'reads a file from the file system' do
      expect(File).to receive(:open)

      Square.new_from_file('spec/fixtures/square')
    end

    it 'creates and returns a new square object' do
      square = Square.new_from_file('spec/fixtures/square')

      expect(square).to be_a(Square)
    end
  end
end
