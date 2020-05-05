require 'sodoku_solution_checker'

describe 'row checker' do
  checker = SolutionChecker.new
  puzzle = NewSodoku.new
  it 'checks all rows true' do
    filled_in_puzzle = 123456789123456789123456789123456789123456789123456789123456789123456789123456789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.row_checker(puzzle_digit_location_hash)).to eq true
  end
  it 'checks row 1 includes unique values false' do
    filled_in_puzzle = 123416789123456789123456789123456789123456789123456789123456789123456789123456789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.row_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks row 2 includes unique values false' do
    filled_in_puzzle = 123456789113456789123456789123456789123456789123456789123456789123456789123456789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.row_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks row 3 includes unique values false' do
    filled_in_puzzle = 123456789123456789113456789123456789123456789123456789123456789123456789123456789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.row_checker(puzzle_digit_location_hash)).to eq false
  end
end
