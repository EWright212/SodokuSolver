require 'sodoku_solution_checker'

describe 'true or false' do
  it 'confirms correct solution' do
    checker = SolutionChecker.new
    expect(checker.verify_solution(497258316186439725253716498629381547375964182841572639962145873718623954534897261)).to eq true
  end
  it 'confirms incorrect row solution' do
    checker = SolutionChecker.new
    expect(checker.verify_solution(497258314186439725253716498629381547375964182841572639962145873718623954534897261)).to eq false
  end
  it 'confirms incorrect column solution' do
    checker = SolutionChecker.new
    expect(checker.verify_solution(497258316186439725253716498429381547375964182841572639962145873718623954534897261)).to eq false
  end
  it 'confirms incorrect square solution' do
    checker = SolutionChecker.new
    expect(checker.verify_solution(497258316146439725253716498629381547375964182841572639962145873718623954534897261)).to eq false
  end
end
