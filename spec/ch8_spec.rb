require 'ch8'

RSpec.describe 'chapter 8' do
  context 'exercise #1' do
    it 'passes basic tests' do
      expect(array_intersection([1, 2, 3, 4, 5], [0, 2, 4, 6, 8])).to eq([2, 4])
      expect(array_intersection(%w[green blue red yellow], %w[yellow purple pink])).to eq(['yellow'])
      expect(array_intersection([6, 0, 12, 10, 16], [3, 15, 18, 20, 15])).to eq([])
    end
  end

  context 'exercise #4' do
    it 'passes basic tests' do
      expect(first_non_repeating_letter('a')).to eq('a')
      expect(first_non_repeating_letter('aaaaa')).to eq('')
      expect(first_non_repeating_letter('minimum')).to eq('n')
      expect(first_non_repeating_letter('sTresS')).to eq('T')
      expect(first_non_repeating_letter('MoOnmeN')).to eq('e')
    end
  end
end
