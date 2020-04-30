require './lib/sodoku_creator.rb'

describe 'Test output converting puzzle to digit objects' do
  it 'can handle output of one digit' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_digit_array_to_string(4)).to eq("[#<struct DigitObject digit=4, location=0, column=0, row=0, square=0>]")
  end
end
