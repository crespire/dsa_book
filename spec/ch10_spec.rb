require 'ch10'

RSpec.describe 'chapter 10' do
  context 'recursive countdown' do
    it 'passes basic tests' do
      expect { countdown(10) }.to output("10\n9\n8\n7\n6\n5\n4\n3\n2\n1\nBlast off!\n").to_stdout
      expect { countdown(5) }.to output("5\n4\n3\n2\n1\nBlast off!\n").to_stdout
      expect { countdown(2.1) }.to output("2.1\n1.1\nBlast off!\n").to_stdout
      expect(countdown('hello')).to eq('Not a number')
    end
  end

  context 'factorials' do
    it 'passes basic tests' do
      expect(factorial(1)).to eq(1)
      expect(factorial(5)).to eq(120)
    end
  end

  context 'print nested array' do
    it 'passes basic tests' do
      expect { print_nested_array([1, 2, 3, 4]) }.to output("1\n2\n3\n4\n").to_stdout
      expect { print_nested_array([1, 2, [3, 4], 5]) }.to output("1\n2\n3\n4\n5\n").to_stdout
      expect { print_nested_array([1, 2, 3, [4, 5, 6], 7, [8, [9, 10, 11, [12, 13, 14]]], [15, 16, 17, 18, 19, [20, 21, 22, [23, 24, 25, [26, 27, [28], 29]], 30, 31], 32], 33]) }.to output("1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16\n17\n18\n19\n20\n21\n22\n23\n24\n25\n26\n27\n28\n29\n30\n31\n32\n33\n").to_stdout
    end
  end
end
