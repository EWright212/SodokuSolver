class Puzzle

  def puzzle_int_to_array(puzzle_int)
    puzzle_int.to_s.split(//)
  end

  def formatted_display(puzzle_int)
    puzzle_array = puzzle_int_to_array(puzzle_int)
    formatted_puzzle = "\n"
    for i in 1..81
      formatted_puzzle << puzzle_array[i - 1]
      if i == 27 || i == 54
        formatted_puzzle << "\n--------------------------\n"
      elsif (i % 9).zero?
        formatted_puzzle << "\n"
      elsif (i % 3).zero?
        formatted_puzzle << " | "
      else
        formatted_puzzle << "  "
      end
    end
    formatted_puzzle
  end

  def verify_solution(filled_in_puzzle)
    row_checker(filled_in_puzzle)
  end

  def row_checker(filled_in_puzzle)
    puzzle_array = puzzle_int_to_array(filled_in_puzzle)
    for i in (0...9)
      current_row = puzzle_array[(9 * i)...(9 * (i + 1))]
      current_row.size == current_row.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
    end
    solution_okay
  end

  def column_checker(filled_in_puzzle)
    puzzle_array = puzzle_int_to_array(filled_in_puzzle)
    current_column = []
    for i in (0...9)
      for j in (0...9)
        current_column << puzzle_array[(j * 9) + i]
      end
      current_column.size == current_column.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
      current_column = []
    end
    solution_okay
  end

  def square_checker(filled_in_puzzle)
    puzzle_array = puzzle_int_to_array(filled_in_puzzle)
    true
  end

end
