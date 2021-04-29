require './lib/sodoku_puzzle'
require './lib/sodoku_formatter'

describe 'hard solver' do
  puzzle = Puzzle.new
  context 'hardest puzzle' do
    it 'intermediate 1' do
    formatter = Formatter.new
    print formatter.formatted_display(puzzle.complete_solver("800000000003600000070090200050007000000045700000100030001000068008500010090000400"))
      expect(puzzle.complete_solver("800000000003600000070090200050007000000045700000100030001000068008500010090000400")).to eq("812753649943682175675491283154237896369845721287169534521974368438526917796318452")
    end
  end
end