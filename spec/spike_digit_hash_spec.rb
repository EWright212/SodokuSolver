require './lib/sodoku_creator.rb'

# NOTE TO SELF - START COUNTING AT ZERO
describe 'Test output converting puzzle to digit objects' do
  it 'can handle output of one digit' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_array_to_string(4)).to eq("#<struct DigitObject digit=4, location=0, column=0, row=0, square=0>")
  end
  it 'can handle two rows' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_array_to_string(111111111222222228)).to eq("#<struct DigitObject digit=8, location=17, column=8, row=1, square=2>")
  end
end
