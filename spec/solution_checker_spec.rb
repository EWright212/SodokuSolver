require 'sodoku_puzzle'

describe 'final answer checked if correct' do
  context 'true of false' do
    it 'confirms correct solution' do
      puzzle = Puzzle.new
      expect(puzzle.verify_solution(864371259325849761971265843436192587198657432257483916689734125713528694542916378)).to eq true
    end
    it 'confirms incorrect solution' do
      puzzle = Puzzle.new
      expect(puzzle.verify_solution(114371259325849761971265843436192587198657432257483916689734125713528694542916378)).to eq false
    end

  end

  context 'row checker' do
    it 'checks row 1 includes unique values true' do
      puzzle = Puzzle.new
      expect(puzzle.verify_solution(123456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq true
    end
    it 'checks row 1 includes unique values false' do
      puzzle = Puzzle.new
      expect(puzzle.verify_solution(123416789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq false
    end
    it 'checks row 2 includes unique values true' do
      puzzle = Puzzle.new
      expect(puzzle.verify_solution(123456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq true
    end
    it 'checks row 2 includes unique values false' do
      puzzle = Puzzle.new
      expect(puzzle.verify_solution(123456789113456789123456789123456789123456789123456789123456789123456789123456789)).to eq false
    end
  end
end

# TODO
# Throws error if too few numbers
# Throws error if too many numbers
# Throws incomplete error if any zeros
