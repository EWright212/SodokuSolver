require 'sodoku_puzzle'

describe 'column checker' do
  it 'checks all columns true' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(111111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq true
  end
  it 'checks column 1 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(199999999199999999399999999499999999599999999699999999799999999899999999999999999)).to eq false
  end
  it 'checks column 2 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(199999999299999999399999999499999999599999999699999999799999999899999999999999999)).to eq false
  end
end
