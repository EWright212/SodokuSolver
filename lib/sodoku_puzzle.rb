class Puzzle

  def formatted_display(puzzle_int)
    puzzle_array = puzzle_int.to_s.split(//)
    first_three = "#{puzzle_array[0]}  #{puzzle_array[1]}  #{puzzle_array[2]}"
"
#{first_three} | #{puzzle_array[3]}  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
--------------------------
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
--------------------------
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
1  2  3 | 4  5  6 | 7  8  9
"
  end

  def verify_solution(solved_puzzle)
    true
  end

end