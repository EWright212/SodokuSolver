require 'sodoku_solution_checker'

describe 'row checker' do
  it 'checks all rows true' do
    checker = SolutionChecker.new
    puzzle = NewSodoku.new
    filled_in_puzzle = 123456789123456789123456789123456789123456789123456789123456789123456789123456789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.row_checker(puzzle_digit_location_hash)).to eq true
  end
  # TODO: get below tests updated to new format
  # it 'checks row 1 includes unique values false' do
  #   checker = SolutionChecker.new
  #   expect(checker.row_checker(123416789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq false
  # end
  # it 'checks row 2 includes unique values false' do
  #   checker = SolutionChecker.new
  #   expect(checker.row_checker(123456789113456789123456789123456789123456789123456789123456789123456789123456789)).to eq false
  # end
  # it 'checks row 3 includes unique values false' do
  #   checker = SolutionChecker.new
  #   expect(checker.row_checker(123456789123456789113456789123456789123456789123456789123456789123456789123456789)).to eq false
  # end
end
