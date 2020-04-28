require 'sodoku_puzzle'

describe 'true or false' do
  it 'confirms correct solution' do
    puzzle = Puzzle.new
    expect(puzzle.verify_solution(497258316186439725253716498629381547375964182841572639962145873718623954534897261)).to eq true
  end
  it 'confirms incorrect solution' do
    puzzle = Puzzle.new
    expect(puzzle.verify_solution(114371259325849761971265843436192587198657432257483916689734125713528694542916371)).to eq false
  end

end
