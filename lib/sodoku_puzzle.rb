class Puzzle

  def formatted_display(puzzle_int)
    output = "/n"
    row = 1

    puzzle_array = puzzle_int.to_s.split(//)
    single_row = ""
    for i in 1..81
      single_row << puzzle_array[i-1]
      if i == 27 || i == 54
        single_row << "\n--------------------------\n"
      elsif i % 9 == 0
        single_row << "\n"
      elsif i % 3 == 0
        single_row << " | "
      else
        single_row << "  "
      end
    end

"
#{single_row}"
  end

  def verify_solution(solved_puzzle)
    true
  end

end