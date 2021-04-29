require 'sodoku_puzzle'

describe 'solution length checker' do
  it 'confirms solution length is 81 numbers' do
    puzzle = Puzzle.new
    expect(puzzle.check_solution_length(123123123456456456789789789123123123456456456789789789123123123456456456789789789)).to eq true
  end
  it 'returns false for solution not equal to 81' do
    puzzle = Puzzle.new
    expect(puzzle.check_solution_length(12312312345645645678978978912312312345645645678978978912312312345645645678978978)).to eq false
  end
end
