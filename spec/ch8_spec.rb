require 'ch8'

RSpec.describe 'chapter 8' do
  it 'passes basic tests' do
    expect(first_non_repeating_letter('a')).to eq('a')
    expect(first_non_repeating_letter('aaaaa')).to eq('')
    expect(first_non_repeating_letter('minimum')).to eq('n')
    expect(first_non_repeating_letter('sTresS')).to eq('T')
    expect(first_non_repeating_letter('MoOnmeN')).to eq('e')
  end
end
