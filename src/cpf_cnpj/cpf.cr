
class CPF
  @digits : Array(Int32)

  def initialize(str : String)
    @digits = str.gsub(/[^0-9]/, "").each_char.map {|c| c.ord - '0'.ord }.to_a
  end

  def valid?
    return false if @digits.size != 11
    sum1 = [10, 9, 8, 7, 6, 5, 4, 3, 2].zip(@digits).map {|a, b| a * b }.sum
    dv1 = sum1 % 11 < 2 ? 0 : 11 - sum1 % 11
    sum2 = [11, 10, 9, 8, 7, 6, 5, 4, 3, 2].zip(@digits).map {|a, b| a * b }.sum
    dv2 = sum2 % 11 < 2 ? 0 : 11 - sum2 % 11
    return @digits[9] == dv1 && @digits[10] == dv2
  end

  def to_s(io)
    io << @digits[0] << @digits[1] << @digits[2] << '.'
    io << @digits[3] << @digits[4] << @digits[5] << '.'
    io << @digits[6] << @digits[7] << @digits[8] << '-'
    io << @digits[9] << @digits[10]
  end

  def inspect(io)
    to_s(io)
  end
end
