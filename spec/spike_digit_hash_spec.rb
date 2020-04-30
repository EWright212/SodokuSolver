require './lib/sodoku_creator.rb'

# NOTE TO SELF - START COUNTING AT ZERO
describe 'Test output converting puzzle to digit objects' do
  it 'can handle output of one digit' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_to_string(4, 0)).to eq("#<struct DigitObject digit=4, location=0, column=0, row=0, square=0>")
  end
  it 'can handle two rows' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_to_string(111111111222222228, 17)).to eq("#<struct DigitObject digit=8, location=17, column=8, row=1, square=2>")
  end
  it 'can handle two rows' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_to_string(1111111112222222223333333334, 27)).to eq("#<struct DigitObject digit=4, location=27, column=0, row=3, square=3>")
  end
end
