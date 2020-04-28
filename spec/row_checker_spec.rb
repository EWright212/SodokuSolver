require 'sodoku_puzzle'

describe 'row checker' do
  it 'checks all rows true' do
    puzzle = Puzzle.new
    expect(puzzle.row_checker(123456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq true
  end
  it 'checks row 1 includes unique values false' do
    puzzle = Puzzle.new
    expect(puzzle.row_checker(123416789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq false
  end
  it 'checks row 2 includes unique values false' do
    puzzle = Puzzle.new
    expect(puzzle.row_checker(123456789113456789123456789123456789123456789123456789123456789123456789123456789)).to eq false
  end
  it 'checks row 3 includes unique values false' do
    puzzle = Puzzle.new
    expect(puzzle.row_checker(123456789123456789113456789123456789123456789123456789123456789123456789123456789)).to eq false
  end
end
