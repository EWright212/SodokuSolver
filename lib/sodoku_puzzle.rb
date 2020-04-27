class Puzzle

  def formatted_display(puzzle_int)
    output = "/n"
    row = 1

    puzzle_array = puzzle_int.to_s.split(//)
    first_three = ""
    for i in 1..4
      first_three << puzzle_array[i-1]
      if i % 3 == 0
        first_three << " | "
      else
        first_three << "  "
      end
    end

"
#{first_three}5  6 | 7  8  9
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