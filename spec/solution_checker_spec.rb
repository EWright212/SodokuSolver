require 'sodoku_puzzle'

describe 'final answer checked if correct' do
  it 'confirms correct solution' do
    puzzle = Puzzle.new
    expect(puzzle.verify_solution(864371259325849761971265843436192587198657432257483916689734125713528694542916378)).to eq true
  end

end
