require 'sodoku_puzzle'

describe 'square checker' do
  it 'confirms correct solution' do
    puzzle = Puzzle.new
    expect(puzzle.square_checker(864371259325849761971265843436192587198657432257483916689734125713528694542916378)).to eq true
  end
  # it 'confirms incorrect solution' do
  #   puzzle = Puzzle.new
  #   expect(puzzle.square_checker(111111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq false
  # end

end
