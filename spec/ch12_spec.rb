require 'ch12'

RSpec.describe 'chapter 12' do
  context 'add_100' do
    it 'passes basic tests' do
      expect(add_until_100([100])).to eq(100)
      expect(add_until_100([90, 2, 2])).to eq(94)
      expect(add_until_100([90, 5, 7])).to eq(12)
      expect(add_until_100([90, 11])).to eq(11)
    end
  end

  context 'golomb' do
    it 'passes basic tests' do
      expect(golomb(3)).to be_positive
      expect(golomb(1)).to be_positive
    end
  end

  context 'unique_paths_memo' do
    it 'passes basic tests' do
      expect(unique_paths(1, 1)).to eq(1)
      expect(unique_paths(3, 2)).to eq(3)
      expect(unique_paths(8, 3)).to eq(36)
      expect(unique_paths(3, 7)).to eq(28)
    end
  end
end
