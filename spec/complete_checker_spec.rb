require 'sodoku_puzzle'

describe 'true or false' do
  it 'confirms correct solution' do
    puzzle = Puzzle.new
    expect(puzzle.verify_solution(864371259325849761971265843436192587198657432257483916689734125713528694542916378)).to eq true
  end
  it 'confirms incorrect solution' do
    puzzle = Puzzle.new
    expect(puzzle.verify_solution(114371259325849761971265843436192587198657432257483916689734125713528694542916378)).to eq false
  end

end
