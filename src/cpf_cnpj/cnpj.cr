
class CNPJ
  @digits : Array(Int32)

  def initialize(str : String)
    @digits = str.gsub(/[^0-9]/, "").each_char.map {|c| c.ord - '0'.ord }.to_a
  end

  def valid?
    return false if @digits.size != 14
    sum1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2].zip(@digits).map {|a, b| a * b }.sum
    dv1 = sum1 % 11 < 2 ? 0 : 11 - sum1 % 11
    sum2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2].zip(@digits).map {|a, b| a * b }.sum
    dv2 = sum2 % 11 < 2 ? 0 : 11 - sum2 % 11
    return @digits[12] == dv1 && @digits[13] == dv2
  end

  def to_s(io)
    io << @digits[0] << @digits[1] << '.'
    io << @digits[2] << @digits[3] << @digits[4] << '.'
    io << @digits[5] << @digits[6] << @digits[7] << '/'
    io << @digits[8] << @digits[9] << @digits[10] << @digits[11] << '-'
    io << @digits[12] << @digits[13]
  end

  def inspect(io)
    to_s(io)
  end
end
