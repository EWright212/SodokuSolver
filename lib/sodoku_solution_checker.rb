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
    square_okay = square_checker(puzzle_digit_location_hash)
    row_okay == true && column_okay == true && square_okay == true ? true : false
  end

  def puzzle_int_to_array(puzzle_int)
    puzzle_int.to_s.split(//)
  end

  # TODO row and column methods v similar - combine?

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

  def square_checker(puzzle_digit_location_hash)
    for i in 0...ROW_LENGTH
      current_square = square_selector(i, puzzle_digit_location_hash)
      current_square_digits = digit_selector(current_square)
      current_square_digits.size == current_square_digits.uniq.size ? solution_okay = true : solution_okay = false
      break if solution_okay == false
    end
    solution_okay
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

  def square_selector(square_int, puzzle_digit_location_hash)
    puzzle_digit_location_hash.select {|location, properties| properties.square == square_int}
  end

end