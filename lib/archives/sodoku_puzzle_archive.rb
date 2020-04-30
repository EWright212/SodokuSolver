require './lib/sodoku_creator.rb'

class Puzzle

  SODOKU_DIGIT_OPTIONS = [1,2,3,4,5,6,7,8,9]
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

  def row_solver(incomplete_puzzle)
    puzzle_array = puzzle_to_array_of_strings(incomplete_puzzle)
    solved_puzzle = []
    for i in (0...9)
      current_row = puzzle_array[(9 * i)...(9 * (i + 1))]
      solved_puzzle << current_section_solver(current_row)
      current_row = []
    end
    solved_puzzle.join.to_i
  end

  def column_solver(incomplete_puzzle)
    puzzle_array = puzzle_to_array_of_strings(incomplete_puzzle)
    solved_puzzle = []
    current_column = []
    for i in (0...9)
      for j in (0...9)
        current_column << puzzle_array[(j * 9) + i]
      end
      solved_puzzle << current_section_solver(current_column)
      current_column = []
    end
    solved_puzzle.transpose.join.to_i
  end

  def square_solver(incomplete_puzzle)
 # get array
 # get hash - position, square group, column, row, digits
 # add in digits to hash
 # for each digit - if zero take all in same column - do magic on.
  end

  private

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

  # TIDY three methods below
  def current_square_solver(current_section, digit)
    digit == 0 ? digit = current_section_digit_solver(digit, current_section) : digit
  end

  def current_section_solver(current_section)
    current_section.map do |digit|
      digit == 0 ? digit = current_section_digit_solver(digit, current_section) : digit
    end
  end

  def current_section_digit_solver(digit, current_section)
    digit = SODOKU_DIGIT_OPTIONS - current_section
    digit[0]
  end

  def puzzle_to_array_of_strings(puzzle)
    puzzle_string_array = puzzle.to_s.split(//)
    puzzle_int_array = puzzle_string_array.map { |digit| digit = digit.to_i }
  end

end
