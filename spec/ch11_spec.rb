require 'ch11'

RSpec.describe 'chapter 11' do
  context 'recursive double in-place' do
    it 'passes basic tests' do
      arr1 = [1, 2, 3, 4]
      expect { double_array!(arr1) }.to change { arr1 }.from([1, 2, 3, 4]).to([2, 4, 6, 8])
      arr2 = [5, 10, 100]
      expect { double_array!(arr2) }.to change { arr2 }.from([5, 10, 100]).to([10, 20, 200])
      arr3 = [1, 5, 10]
      expect { double_array!(arr3, 1) }.to change { arr3 }.from([1, 5, 10]).to([1, 10, 20])
    end
  end

  context 'recursive array sum' do
    it 'passes basic tests' do
      expect(sum_array([1, 2, 3])).to eq(6)
      expect(sum_array([1, 2, 5, 5, 1, 75])).to eq(89)
    end
  end

  context 'recursive reverse string' do
    it 'passes basic tests' do
      expect(reverse_string('abc')).to eq('cba')
      expect(reverse_string('racecar')).to eq('racecar')
      expect(reverse_string('abcdefghijklmnopqrstuvwXyz')).to eq('zyXwvutsrqponmlkjihgfedcba')
    end
  end

  context 'recursive count x' do
    it 'passes basic tests' do
      expect(count_x('none!')).to eq(0)
      expect(count_x('axb')).to eq(1)
      expect(count_x('xxxxxxxxxx')).to eq(10)
    end
  end

  context 'staircase problem' do
    it 'passes basic tests' do
      expect(paths_up(1)).to eq(1)
      expect(paths_up(2)).to eq(2)
      expect(paths_up(3)).to eq(4)
      expect(paths_up(4)).to eq(7)
    end
  end

  context 'anagram generator' do
    it 'passes basic tests' do
      expect(anagrams_of('ab')).to eq(%w[ab ba])
      expect(anagrams_of('abc')).to eq(%w[abc bac bca acb cab cba])
      expect(anagrams_of('abcdef')).to have_attributes(length: 720)
    end
  end

  context 'character_counter' do
    it 'passes basic tests' do
      expect(character_counter([])).to eq(0)
      expect(character_counter(%w[ab c ab])).to eq(5)
      expect(character_counter(%w[ab c def ghij])).to eq(10)
    end
  end

  context 'evens only' do
    it 'passes basic tests' do
      expect(evens_only([1, 2])).to eq([2])
      expect(evens_only([2, 4, 6])).to eq([2, 4, 6])
      expect(evens_only([1, 3, 5])).to eq([])
      expect(evens_only([])).to eq([])
    end
  end

  context 'triangular number' do
    it 'passes basic tests' do
      expect(triangular(3)).to eq(6)
      expect(triangular(7)).to eq(28)
      expect(triangular(0)).to eq(0)
      expect(triangular(1)).to eq(1)
      expect(triangular(20)).to eq(210)
    end
  end

  context 'first x' do
    it 'passes basic tests' do
      # Given constraint: Assume string always has at least 1 x
      expect(first_x('x')).to eq(0)
      expect(first_x('aax')).to eq(2)
      expect(first_x('aaaxx')).to eq(3)
      expect(first_x('abcdefghijklmnopqrstuvwxyz')).to eq(23)
    end
  end

  context 'unique paths' do
    it 'passes basic tests' do
      expect(unique_paths(1, 1)).to eq(1)
      expect(unique_paths(3, 2)).to eq(3)
      expect(unique_paths(8, 3)).to eq(36)
      expect(unique_paths(3, 7)).to eq(28)
    end
  end
end
