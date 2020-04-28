require 'sodoku_puzzle'

describe 'square checker' do
  # it 'confirms correct solution' do
  #   puzzle = Puzzle.new
  #   expect(puzzle.square_checker(123123123456456456789789789123123123456456456789789789123123123456456456789789789)).to eq true
  # end
  # it 'checks square 1 includes unique values false' do
  #   puzzle = Puzzle.new
  #   expect(puzzle.square_checker(123111111123222222123333333444444444555555555666666666777777777888888888999999999)).to eq false
  # end
  # it 'checks square 2 includes unique values false' do
  #   puzzle = Puzzle.new
  #   expect(puzzle.square_checker(123133123456456456789789789123123123456456456789789789123123123456456456789789789)).to eq false
  # end
  # it 'checks square 4 includes unique values false' do
  #   puzzle = Puzzle.new
  #   expect(puzzle.square_checker(123123123456456456789789789123123123416456456789789789123123123456456456789789789)).to eq false
  # end
  it 'shows which square a number is in' do
    puzzle = Puzzle.new
    expect(puzzle.square_checker(111222333111222333111222333444555666444555666444555666777888999777888999777888999)).to eq false
  end
  it 'shows which square a number is in' do
    puzzle = Puzzle.new
    expect(puzzle.square_checker(123123123456456456789789789123123123456456456789789789123123123456456456789789789)).to eq true
  end
end
