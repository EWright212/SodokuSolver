require 'sodoku_formatter'

describe 'shows formatted formatted_puzzle' do
  it 'shows formatted complete formatted_puzzle v1' do
    formatted_puzzle = Formatter.new
    expect(formatted_puzzle.formatted_display(123456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq("
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
  it 'shows formatted complete formatted_puzzle v2' do
    formatted_puzzle = Formatter.new
    expect(formatted_puzzle.formatted_display(223456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq("
2  2  3 | 4  5  6 | 7  8  9
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
  it 'shows formatted complete formatted_puzzle v3' do
    formatted_puzzle = Formatter.new
    expect(formatted_puzzle.formatted_display(331456789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq("
3  3  1 | 4  5  6 | 7  8  9
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
  it 'shows formatted complete formatted_puzzle v4' do
    formatted_puzzle = Formatter.new
    expect(formatted_puzzle.formatted_display(111156789123456789123456789123456789123456789123456789123456789123456789123456789)).to eq("
1  1  1 | 1  5  6 | 7  8  9
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
  it 'shows formatted complete formatted_puzzle v5' do
    formatted_puzzle = Formatter.new
    expect(formatted_puzzle.formatted_display(123456781123456781123456781123456781123456781123456781123456781123456781123456781)).to eq("
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
