require './lib/sodoku_creator.rb'

class Puzzle

  SODOKU_DIGIT_OPTIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  ROW_LENGTH = 9
  
  def check_solution_length(puzzle_int)
    puzzle_int.to_s.length == 81
  end

  def complete_solver(incomplete_puzzle)
    if check_solution_length(incomplete_puzzle) == false
      raise "Puzzle incorrect length"
    end
    puzzle = NewSodoku.new
    puzzle_digit_location_hash = puzzle.create_puzzle_hash(incomplete_puzzle)
    solved_puzzle = []
    starttime = Time.now
    # TODO: this is ugly
    until puzzle_digit_location_hash.select { |_location, properties|  properties.digit.zero? } == {}
      puzzle_digit_location_hash.each do |location, properties|
        if properties.digit.zero?
          properties.possibilities = square_digit_solver(location, properties, puzzle_digit_location_hash)
          if properties.digit.zero?
            properties.possibilities = row_digit_solver(location, properties, puzzle_digit_location_hash)
            if properties.digit.zero?
              properties.possibilities = column_digit_solver(location, properties, puzzle_digit_location_hash)
            end
          end
        end
      end
      break if Time.now > starttime + 10
    end
    pp puzzle_digit_location_hash
    puzzle_digit_location_hash.map { |_location, properties| solved_puzzle << properties.digit }
    # For testing only - prevent if string starts with zero being converted to int
    solved_puzzle[0].zero? ? solved_puzzle[0] = 1 : nil
    solved_puzzle.join.to_i
  end

  private

  def square_digit_solver(_location, properties, puzzle_digit_location_hash)
    all_items_in_square = square_selector(properties.square, puzzle_digit_location_hash)
    the_only_candidate_in_a_cell(_location, properties, puzzle_digit_location_hash, properties.square, all_items_in_square)
  end

  def row_digit_solver(_location, properties, puzzle_digit_location_hash)
    all_items_in_row = row_selector(properties.row, puzzle_digit_location_hash)
    the_only_candidate_in_a_cell(_location, properties, puzzle_digit_location_hash, properties.row, all_items_in_row)
  end

  def column_digit_solver(_location, properties, puzzle_digit_location_hash)
    all_items_in_column = column_selector(properties.column, puzzle_digit_location_hash)
    the_only_candidate_in_a_cell(_location, properties, puzzle_digit_location_hash, properties.column, all_items_in_column)
  end

  # This solves the simplest heuristic - Single - the only remaning candidate in a cell
  def the_only_candidate_in_a_cell(_location, properties, puzzle_digit_location_hash, shape, all_items_in_shape)
    shape_all_digits = all_items_in_shape.map { |_location, properties| properties.digit }
    properties.possibilities = properties.possibilities - shape_all_digits
    if properties.possibilities.length == 1
      properties.digit = properties.possibilities[0]
      properties.possibilities =[]
    end
    properties.possibilities
  end

  # Next TODO: Second heuristic. In one shape, only one cell has a possibility of being that specific number


  # TODO - 3 methods below super similar - combine? 
  #  Also are identical to methods in solution checker

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
