require 'sodoku_solution_checker'

describe 'square checker' do
  it 'shows which square a number is in' do
    checker = SolutionChecker.new
    expect(checker.square_array_sorter(111222333111222333111222333444555666444555666444555666777888999777888999777888999)).to eq([["1", "1", "1", "1", "1", "1", "1", "1", "1"], ["2", "2", "2", "2", "2", "2", "2", "2", "2"], ["3", "3", "3", "3", "3", "3", "3", "3", "3"], ["4", "4", "4", "4", "4", "4", "4", "4", "4"], ["5", "5", "5", "5", "5", "5", "5", "5", "5"], ["6", "6", "6", "6", "6", "6", "6", "6", "6"], ["7", "7", "7", "7", "7", "7", "7", "7", "7"], ["8", "8", "8", "8", "8", "8", "8", "8", "8"], ["9", "9", "9", "9", "9", "9", "9", "9", "9"]])
  end
  it 'shows which square a number is in' do
    checker = SolutionChecker.new
    expect(checker.square_array_sorter(123123123456456456789789789123123123456456456789789789123123123456456456789789789)).to eq([["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"], ["1", "2", "3", "4", "5", "6", "7", "8", "9"]])
  end
end