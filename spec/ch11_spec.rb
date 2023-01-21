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
end
