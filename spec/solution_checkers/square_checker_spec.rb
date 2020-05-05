require 'sodoku_solution_checker'

describe 'square checker' do
  checker = SolutionChecker.new
  puzzle = NewSodoku.new
  it 'confirms correct solution' do
    filled_in_puzzle = 123123123456456456789789789123123123456456456789789789123123123456456456789789789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.square_checker(puzzle_digit_location_hash)).to eq true
  end
  it 'checks square 1 includes unique values false' do
    filled_in_puzzle = 123111111123222222123333333444444444555555555666666666777777777888888888999999999
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.square_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks square 2 includes unique values false' do
    filled_in_puzzle = 123193123456456456789789789123123123456456456789789789123123123456456456789789789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.square_checker(puzzle_digit_location_hash)).to eq false
  end
  it 'checks square 4 includes unique values false' do
    filled_in_puzzle = 123123123456456456789789789193123123456456456789789789123123123456456456789789789
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    expect(checker.square_checker(puzzle_digit_location_hash)).to eq false
  end
end
