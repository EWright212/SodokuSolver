class DigitObject < Struct.new(:digit, :location, :column, :row, :square)
end

class NewSodoku

  def create_puzzle_array(puzzle)
    incomplete_puzzle = puzzle_to_array_of_strings(puzzle)
    puzzle_digit_location_array = []
    incomplete_puzzle.each_with_index do |item, index|
      digit_object = DigitObject.new
      digit_object.digit = item
      digit_object.location = index
      digit_object.column = get_digit_column(index)
      digit_object.row = get_digit_row(index)
      digit_object.square = get_digit_square(index)
      puzzle_digit_location_array << digit_object
    end
    puzzle_digit_location_array
  end
  
  Digit = Struct.new(:index, :row, :column, :square)
 
  private 
   
  def get_digit_column(index)
    2
  end
  def get_digit_row(index)
    3
  end
  def get_digit_square(index)
    4
  end

  def puzzle_to_array_of_strings(puzzle)
    puzzle_string_array = puzzle.to_s.split(//)
    puzzle_int_array = puzzle_string_array.map { |digit| digit = digit.to_i }
  end

end

