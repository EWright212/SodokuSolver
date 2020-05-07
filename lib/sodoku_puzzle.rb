require './lib/sodoku_creator.rb'

class Puzzle

  SODOKU_DIGIT_OPTIONS = [1,2,3,4,5,6,7,8,9]
  ROW_LENGTH = 9
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81 ? true : false
  end

  def complete_solver(incomplete_puzzle)
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(incomplete_puzzle)
    solved_puzzle = []
    until puzzle_digit_location_hash.select {|location, properties| properties.digit == 0} == {}
      complete_map = puzzle_digit_location_hash.each do |location, properties|
        if properties.digit == 0
          properties.possibilities = square_digit_solver(location, properties, puzzle_digit_location_hash)
          if properties.digit == 0
            properties.possibilities = row_digit_solver(location, properties, puzzle_digit_location_hash)
            if properties.digit == 0
              properties.possibilities = column_digit_solver(location, properties, puzzle_digit_location_hash)
            end
          end
        end
      end
    end
    puzzle_digit_location_hash.map {|location, properties| solved_puzzle << properties.digit}
    solved_puzzle.join.to_i
  end

  private

  #  TODO - step one - get these solvers to remove invalid options
  #  TODO - step two - to aviod infinite loop - complete solver goes through each solver for each number only once

  def square_digit_solver(location, properties, puzzle_digit_location_hash)
    square_int = properties.square
    all_items_in_square = square_selector(square_int, puzzle_digit_location_hash)
    square_all_digits = all_items_in_square.map { |location, properties| properties.digit}
    properties.possibilities = properties.possibilities - square_all_digits
    if properties.possibilities.length == 1
      properties.digit = properties.possibilities[0]
    end
    properties.possibilities
  end

  def row_digit_solver(location, properties, puzzle_digit_location_hash)
    row_int = properties.row
    all_items_in_row = row_selector(row_int, puzzle_digit_location_hash)
    row_all_digits = all_items_in_row.map { |location, properties| properties.digit}
    properties.possibilities = properties.possibilities - row_all_digits
    if properties.possibilities.length == 1
      properties.digit = properties.possibilities[0]
    end
    properties.possibilities
  end

  def column_digit_solver(location, properties, puzzle_digit_location_hash)
    column_int = properties.column
    all_items_in_column = column_selector(column_int, puzzle_digit_location_hash)
    column_all_digits = all_items_in_column.map { |location, properties| properties.digit}
    properties.possibilities = properties.possibilities - column_all_digits
    if properties.possibilities.length == 1
      properties.digit = properties.possibilities[0]
    end
    properties.possibilities
  end

  # TODO - 3 methods below super similar - combine?

  def row_selector(row_int, puzzle_digit_location_hash)
    puzzle_digit_location_hash.select { |_location, properties| properties.row == row_int }
  end

  def column_selector(column_int, puzzle_digit_location_hash)
    puzzle_digit_location_hash.select { |_location, properties| properties.column == column_int }
  end

  def square_selector(square_int, puzzle_digit_location_hash)
    puzzle_digit_location_hash.select { |_location, properties| properties.square == square_int }
  end

end
