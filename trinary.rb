module BookKeeping
  VERSION = 1
end

class Trinary
  def initialize(str)
    @str = str
  end

  def to_decimal
    total = 0
    @str.chars.reverse.each_with_index do |element, index|
      return 0 unless /[0-2]/ === element
      total += (3**index) * element.to_i
    end
    total
  end
end