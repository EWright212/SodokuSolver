require './lib/sodoku_creator.rb'

class Puzzle

  SODOKU_DIGIT_OPTIONS = [1,2,3,4,5,6,7,8,9]
  ROW_LENGTH = 9
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

  # TODO - total solver method

  def complete_solver(incomplete_puzzle)
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(incomplete_puzzle)
    solved_puzzle = []
    complete_map = puzzle_digit_location_hash.each do |location, properties|
      while properties.digit == 0
        # Check all of row solver, column solver, square solver
        square_digit_solver(location, properties, puzzle_digit_location_hash)
        break if properties.digit != 0
        row_digit_solver(location, properties, puzzle_digit_location_hash)
        break if properties.digit != 0
        column_digit_solver(location, properties, puzzle_digit_location_hash)
        break if properties.digit != 0
      end
      solved_puzzle << properties.digit
    end
    solved_puzzle.join.to_i
  end

  def row_solver(incomplete_puzzle)
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(incomplete_puzzle)
    solved_puzzle = []
    for i in 0...ROW_LENGTH
      current_row = row_selector(i, puzzle_digit_location_hash)
      current_row_digits = digit_selector(current_row)
      solved_puzzle << current_section_solver(current_row_digits)
    end
    solved_puzzle.join.to_i
  end

  def column_solver(incomplete_puzzle)
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(incomplete_puzzle)
    solved_puzzle = []
    for i in 0...ROW_LENGTH
      current_column = column_selector(i, puzzle_digit_location_hash)
      current_column_digits = digit_selector(current_column)
      solved_puzzle << current_section_solver(current_column_digits)
    end
    solved_puzzle.transpose.join.to_i
  end

  # Rename to total sover when works for not just squares
  def square_solver(incomplete_puzzle)
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(incomplete_puzzle)
    solved_puzzle = []
    complete_map = puzzle_digit_location_hash.each do |location, properties|
      if properties.digit == 0
        # Check all of row solver, column solver, square solver
        square_digit_solver(location, properties, puzzle_digit_location_hash)
      end
      solved_puzzle << properties.digit
    end
    solved_puzzle.join.to_i
  end

  private

  def square_digit_solver(location, properties, puzzle_digit_location_hash)
    square_int = properties.square
    all_items_in_square = square_selector(square_int, puzzle_digit_location_hash)
    square_all_digits = all_items_in_square.map { |location, properties| properties.digit}
    properties.digit = SODOKU_DIGIT_OPTIONS - square_all_digits
  end

  # TIDY three methods below

  def current_section_solver(current_section)
    current_section.map do |digit|
      digit == 0 ? digit = current_section_digit_solver(digit, current_section) : digit
    end
  end

  def current_section_digit_solver(digit, current_section)
    digit = SODOKU_DIGIT_OPTIONS - current_section
    digit[0]
  end

  # TODO New methods below from solution checker - remove duplication
  def digit_selector(section)
    digits_array = []
    section.each {|location, properties| digits_array << properties.digit }
    digits_array
  end

  # TODO - 3 methods below super similar - combine?

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
