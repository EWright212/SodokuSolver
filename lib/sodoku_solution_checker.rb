require './lib/sodoku_creator.rb'

class SolutionChecker

  # Square is defined as a 3 x 3 section of digits in a sodoku that must contain 1-9
  SQUARE_WIDTH = 3
  ROW_LENGTH = 9

  def verify_solution(filled_in_puzzle)
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(filled_in_puzzle)
    row_okay = row_checker(puzzle_digit_location_hash)
    column_okay = column_checker(puzzle_digit_location_hash)
    square_okay = square_checker(filled_in_puzzle)
    row_okay == true && column_okay == true && square_okay == true ? true : false
  end

  def puzzle_int_to_array(puzzle_int)
    puzzle_int.to_s.split(//)
  end

  def row_checker(puzzle_digit_location_hash)
    for i in 0...ROW_LENGTH
      current_row = row_selector(i, puzzle_digit_location_hash)
      current_row_digits = digit_selector(current_row)
      current_row_digits.size == current_row_digits.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
    end
    solution_okay
  end

  def column_checker(puzzle_digit_location_hash)
    for i in 0...ROW_LENGTH
      current_column = column_selector(i, puzzle_digit_location_hash)
      current_column_digits = digit_selector(current_column)
      current_column_digits.size == current_column_digits.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
    end
    solution_okay
  end

  def square_checker(filled_in_puzzle)
    all_squares = square_array_sorter(filled_in_puzzle)
    solution_okay = nil
    all_squares.each do |current_square|
      current_square.size == current_square.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
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

  private

  def digit_selector(section)
    digits_array = []
    section.each {|location, properties| digits_array << properties.digit }
    digits_array
  end

  def row_selector(row_int, puzzle_digit_location_hash)
    puzzle_digit_location_hash.select {|location, properties| properties.row == row_int}
  end

  def column_selector(column_int, puzzle_digit_location_hash)
    puzzle_digit_location_hash.select {|location, properties| properties.column == column_int}
  end

end