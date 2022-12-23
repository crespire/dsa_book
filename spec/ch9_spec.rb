require 'ch9'

RSpec.describe 'chapter 9' do
  context 'exercise #4' do
    it 'passes basic tests' do
      expect(reverse_string('abcde')).to eq('edcba')
      expect(reverse_string('racecar')).to eq('racecar')
      expect(reverse_string('')).to eq('')
    end
  end
end
