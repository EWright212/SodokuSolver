require './lib/sodoku_creator.rb'

# NOTE TO SELF - START COUNTING AT ZERO
describe 'Test output converting puzzle to digit objects' do
  it 'can handle output of one digit' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_to_string(4, 0)).to eq("#<struct DigitObject digit=4, column=0, row=0, square=0, possibilities=[]>")
  end
  it 'can handle two rows' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_to_string(111111111222222220, 17)).to eq("#<struct DigitObject digit=0, column=8, row=1, square=2, possibilities=[1, 2, 3, 4, 5, 6, 7, 8, 9]>")
  end
  it 'can handle two rows' do
    puzzle = NewSodoku.new
    expect(puzzle.puzzle_last_digit_to_string(1111111112222222223333333334, 27)).to eq("#<struct DigitObject digit=4, column=0, row=3, square=3, possibilities=[]>")
  end
end
