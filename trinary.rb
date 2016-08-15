module BookKeeping
  VERSION = 1
end

class Trinary
  def initialize(str)
    @str = str
  end

  def to_decimal
    values = 0
    @str.chars.reverse.each_with_index do |element, index|
      return 0 unless /[0-2]/ === element
      values += (3**index) * element.to_i
    end
    values
  end
end