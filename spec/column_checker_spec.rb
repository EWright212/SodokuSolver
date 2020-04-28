require 'sodoku_puzzle'

describe 'column checker' do
  it 'checks column 1 true' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(199999999299999999399999999499999999599999999699999999799999999899999999999999999)).to eq true
  end
  it 'checks column 1 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(199999999199999999399999999499999999599999999699999999799999999899999999999999999)).to eq false
  end
end
