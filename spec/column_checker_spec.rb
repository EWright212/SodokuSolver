require 'sodoku_puzzle'

describe 'column checker' do
  it 'checks all columns true' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(111111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq true
  end
  it 'checks column 1 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(211111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq false
  end
  it 'checks column 2 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(121111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq false
  end
  it 'checks column 9 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(111111111222222222333333333444444444555555555666666666777777777888888888999999991)).to eq false
  end
  it 'checks column 2 and 9 false' do
    puzzle = Puzzle.new
    expect(puzzle.column_checker(121111111222222222333333333444444444555555555666666666777777777888888888999999991)).to eq false
  end
end
