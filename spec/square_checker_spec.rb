require 'sodoku_puzzle'

describe 'square checker' do
  it 'confirms correct solution' do
    puzzle = Puzzle.new
    expect(puzzle.square_checker(123123123456456456789789789123123123456456456789789789123123123456456456789789789)).to eq true
  end
  it 'checks square 1 includes unique values false' do
    puzzle = Puzzle.new
    expect(puzzle.square_checker(123111111123222222123333333444444444555555555666666666777777777888888888999999999)).to eq false
  end
  it 'checks square 2 includes unique values false' do
    puzzle = Puzzle.new
    expect(puzzle.square_checker(123193123456456456789789789111111222222333333444444555555666666)).to eq false
  end

end
