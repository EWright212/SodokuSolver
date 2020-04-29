class Puzzle
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

  def row_solver(incomplete_puzzle)
    puzzle_array = incomplete_puzzle.to_s.split(//)
    puzzle_in_progress = puzzle_array.map { |digit| digit = digit.to_i }
    solved_puzzle = puzzle_in_progress.map do |digit|
      if digit == 0
        digit = 9
      else
        digit
      end
    end
    solved_puzzle.join.to_i
  end

  # def get_current_row
  #   for i in (0...9)
  #     current_row = puzzle_array[(9 * i)...(9 * (i + 1))]
  #     current_row.size == current_row.uniq.size ? solution_okay = true : solution_okay = false
  #     break if solution_okay == false
  #   end
  # end

end
