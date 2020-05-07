require 'sodoku_solution_checker'

describe 'column checker' do
  checker = SolutionChecker.new
  puzzle = NewSodoku.new
  it 'checks all columns true' do
    filled_in_puzzle = 111111111222222222333333333444444444555555555666666666777777777888888888999999999
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.column_checker(puzzle_digit_location_hash)).to eq true
  end
  it 'checks column 1 false' do
    filled_in_puzzle = 211111111222222222333333333444444444555555555666666666777777777888888888999999999
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.column_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks column 2 false' do
    filled_in_puzzle = 121111111222222222333333333444444444555555555666666666777777777888888888999999999
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.column_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks column 9 false' do
    filled_in_puzzle = 111111111222222222333333333444444444555555555666666666777777777888888888999999991
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.column_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks column 2 and 9 false' do
    filled_in_puzzle = 121111111222222222333333333444444444555555555666666666777777777888888888999999991
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.column_checker(puzzle_digit_location_hash)).to eq false
  end
end
