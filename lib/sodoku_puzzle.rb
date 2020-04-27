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
    if puzzle_array[0] == puzzle_array[1]
      false
    else
      true
    end
  end

end
