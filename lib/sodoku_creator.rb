class DigitObject < Struct.new(:digit, :location, :column, :row, :square)
end

# NOTE TO SELF - START COUNTING AT ZERO
class NewSodoku
  
  ROW_LENGTH = 9
  SQUARE_LENGTH = 3

  def create_puzzle_hash(puzzle)
    incomplete_puzzle = puzzle_to_array_of_strings(puzzle)
    puzzle_digit_location_hash = {}
    incomplete_puzzle.each_with_index do |item, index|
      digit_object = DigitObject.new
      digit_object.digit = item
      # Below row may be unnecessary as can access via hash location
      digit_object.location = index 
      digit_object.row = get_digit_row(index)
      digit_object.column = get_digit_column(index)
      digit_object.square = get_digit_square(index)
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
    square = (column / SQUARE_LENGTH) + square_row * 3
  end

  def puzzle_to_array_of_strings(puzzle)
    puzzle_string_array = puzzle.to_s.split(//)
    puzzle_int_array = puzzle_string_array.map { |digit| digit = digit.to_i }
  end

end

