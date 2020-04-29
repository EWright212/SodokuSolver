class Puzzle
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

  def row_solver(incomplete_puzzle)
    puzzle_array = incomplete_puzzle.to_s.split(//)
    solved_puzzle = puzzle_array.map do |digit|
      digit = digit.to_i 
      if digit == 0
        digit = 9
      else
        digit
      end
    end
    solved_puzzle.join.to_i
  end

end
