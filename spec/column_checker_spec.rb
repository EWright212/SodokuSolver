require 'sodoku_solution_checker'

describe 'column checker' do
  it 'checks all columns true' do
    checker = SolutionChecker.new
    expect(checker.column_checker(111111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq true
  end
  it 'checks column 1 false' do
    checker = SolutionChecker.new
    expect(checker.column_checker(211111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq false
  end
  it 'checks column 2 false' do
    checker = SolutionChecker.new
    expect(checker.column_checker(121111111222222222333333333444444444555555555666666666777777777888888888999999999)).to eq false
  end
  it 'checks column 9 false' do
    checker = SolutionChecker.new
    expect(checker.column_checker(111111111222222222333333333444444444555555555666666666777777777888888888999999991)).to eq false
  end
  it 'checks column 2 and 9 false' do
    checker = SolutionChecker.new
    expect(checker.column_checker(121111111222222222333333333444444444555555555666666666777777777888888888999999991)).to eq false
  end
end
