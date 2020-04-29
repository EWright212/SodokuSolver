class Puzzle
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

  def row_solver(incomplete_puzzle)
    puzzle_array = puzzle_to_array_of_strings(incomplete_puzzle)
    solved_puzzle = []
    for i in (0...9)
      current_row = puzzle_array[(9 * i)...(9 * (i + 1))]
      solved_puzzle << current_row_solver(current_row)
      current_row = []
    end
    solved_puzzle.join.to_i
  end

  # def loop_over_all_rows
  #   
  # end

  private

  def current_row_solver(current_row)
    current_row.map do |digit|
      if digit == 0
        digit = 9
      else
        digit
      end
    end
  end

  def puzzle_to_array_of_strings(puzzle)
    puzzle_string_array = puzzle.to_s.split(//)
    puzzle_int_array = puzzle_string_array.map { |digit| digit = digit.to_i }
  end

end
