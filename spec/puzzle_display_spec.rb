require 'SodokuPuzzle'

describe 'shows formatted puzzle' do
  it 'shows formatted complete puzzle v1' do
    puzzle = Puzzle.new
    expect(puzzle.formatted_display(123456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq("
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
--------------------------
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
--------------------------
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
")
  end
  it 'shows formatted complete puzzle v1' do
    puzzle = Puzzle.new
    expect(puzzle.formatted_display(123456781123456781123456781123456781123456781123456781123456781123456781123456781)).to eq("
1  2  3 | 4  5  6 | 7  8  1
1  2  3 | 4  5  6 | 7  8  1
1  2  3 | 4  5  6 | 7  8  1
--------------------------
1  2  3 | 4  5  6 | 7  8  1
1  2  3 | 4  5  6 | 7  8  1
1  2  3 | 4  5  6 | 7  8  1
--------------------------
1  2  3 | 4  5  6 | 7  8  1
1  2  3 | 4  5  6 | 7  8  1
1  2  3 | 4  5  6 | 7  8  1
")
  end
end
