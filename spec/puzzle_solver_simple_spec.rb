require './lib/sodoku_puzzle'

describe 'simple solver' do
  puzzle = Puzzle.new
  context 'rows' do
    it 'can complete first row for one missing figure -input starts with 0' do
      expect(puzzle.row_solver("097258316186439725253716498629381547375964182841572639962145873718623954534897261")).to eq(497258316186439725253716498629381547375964182841572639962145873718623954534897261)
    end
    it 'can complete first row for one missing figure v1' do
      expect(puzzle.row_solver(407258316186439725253716498629381547375964182841572639962145873718623954534897261)).to eq(497258316186439725253716498629381547375964182841572639962145873718623954534897261)
    end
    it 'can complete first row for one missing figure v2' do
      expect(puzzle.row_solver(690127384138459672724836915851264739273981546946573821317692458489715263562348197)).to eq(695127384138459672724836915851264739273981546946573821317692458489715263562348197)
    end
  end
  context 'columns' do
    it 'can complete first column for one missing figure' do
      expect(puzzle.column_solver(497258316086439725253716498629381547375964182841572639962145873718623954534897261)).to eq(497258316186439725253716498629381547375964182841572639962145873718623954534897261)
    end
    it 'can complete second column for one missing figure' do
      expect(puzzle.column_solver(695127384108459672724836915851264739273981546946573821317692458489715263562348197)).to eq(695127384138459672724836915851264739273981546946573821317692458489715263562348197)
    end
  end
  context 'square' do
    it 'can complete first square for one missing figure' do
      expect(puzzle.square_solver(497258316086439725253716498629381547375964182841572639962145873718623954534897261)).to eq(497258316186439725253716498629381547375964182841572639962145873718623954534897261)
    end
    it 'can complete second square for one missing figure' do
      expect(puzzle.square_solver(695127384108409672724836915851264739273981546946573821317692458489715263562348197)).to eq(695127384138459672724836915851264739273981546946573821317692458489715263562348197)
    end
  end
end