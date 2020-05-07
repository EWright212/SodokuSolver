class DigitObject < Struct.new(:digit, :column, :row, :square, :possibilities)
end

# NOTE TO SELF - START COUNTING AT ZERO
class NewSodoku
  
  ROW_LENGTH = 9
  SQUARE_LENGTH = 3
  SODOKU_DIGIT_OPTIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def create_puzzle_hash(puzzle)
    incomplete_puzzle = puzzle_to_array_of_strings(puzzle)
    puzzle_digit_location_hash = {}
    incomplete_puzzle.each_with_index do |item, index|
      digit_object = DigitObject.new
      digit_object.digit = item 
      digit_object.row = get_digit_row(index)
      digit_object.column = get_digit_column(index)
      digit_object.square = get_digit_square(index)
      digit_object.possibilities = SODOKU_DIGIT_OPTIONS
      puzzle_digit_location_hash[index] = digit_object
    end
    puzzle_digit_location_hash
  end

  # Method for testing output
  def puzzle_last_digit_to_string(puzzle, test_index)
    puzzle_digit_location_hash = create_puzzle_hash(puzzle)
    puzzle_digit_location_hash[test_index].to_s
  end
   
  def get_digit_row(index)
    index / ROW_LENGTH
  end

  def get_digit_column(index)
    index % ROW_LENGTH
  end
  
  private

  def get_digit_square(index)
    row = get_digit_row(index)
    column = get_digit_column(index)
    square_row = row / SQUARE_LENGTH
    (column / SQUARE_LENGTH) + square_row * 3
  end

  def puzzle_to_array_of_strings(puzzle)
    puzzle.to_s.split(//).map { |digit| digit.to_i }
  end

end
