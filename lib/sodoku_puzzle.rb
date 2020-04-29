class Puzzle
  
  # Square is defined as a 3 x 3 section of digits in a sodoku that must contain 1-9
  SQUARE_WIDTH = 3
  ROW_LENGTH = 9

  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

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
    row = row_checker(filled_in_puzzle)
    column = column_checker(filled_in_puzzle)
    square = square_checker(filled_in_puzzle)
    abcd = formatted_display(filled_in_puzzle)
    row == column && row == square && row == true ? true : false
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
    current_square = []
    # Squares are grouped in threes depending on which row they're in
    for i in (0...9)
      if i < 3
        square_group = 0
        for j in (0...3)
          current_square << puzzle_array[j + (3 * i)]
        end
        for j in (9...12)
          current_square << puzzle_array[j + (3 * i)]
        end
        for j in (18...21)
          current_square << puzzle_array[j + (3 * i)]
        end
      elsif i < 6
        for j in (27...30)
          current_square << puzzle_array[j + (3 * (i-3))]
        end
        for j in (36...39)
          current_square << puzzle_array[j + (3 * (i-3))]
        end
        for j in (45...48)
          current_square << puzzle_array[j + (3 * (i-3))]
        end
      else
        for j in (54...57)
          current_square << puzzle_array[j + (3 * (i-6))]
        end
        for j in (63...66)
          current_square << puzzle_array[j + (3 * (i-6))]
        end
        for j in (72...75)
          current_square << puzzle_array[j + (3 * (i-6))]
        end
      end
      current_square.size == current_square.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
      current_square = []
    end
    solution_okay
  end

  def square_array_sorter(filled_in_puzzle)
    puzzle_array = puzzle_int_to_array(filled_in_puzzle)
    current_square = []
    all_squares = []
    # Squares are grouped in threes depending on which row they're in, e.g. Square 1 is in group 1, Square 4 is in group 2
    for current_row in (0...ROW_LENGTH)
      square_group = current_row / SQUARE_WIDTH
      square_location = square_group * SQUARE_WIDTH
      for current_square_row in (square_location...square_location + SQUARE_WIDTH)
        current_digit = ROW_LENGTH * current_square_row
        for j in (current_digit ... current_digit + SQUARE_WIDTH)
          current_digit_index = j + SQUARE_WIDTH * (current_row - square_location)
          current_square << puzzle_array[current_digit_index]
        end
      end
      all_squares << current_square
      current_square = []
    end
    all_squares
  end

end
