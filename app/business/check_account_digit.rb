class CheckAccountDigit
  def initialize(account_number, digit)
    @account_number = account_number
    @digit = digit
  end

  def check_digit?
    i = @account_number.length + 1
    j = 0
    sum_product = 0
    while i > 1
      sum_product += @account_number[j].to_i * i
      i -= 1
      j += 1
    end

    calculated_digit = (sum_product * 10) % 11

    puts "Provided Digit: #{@digit}"
    puts "Calculated Digit: #{calculated_digit}"

    @digit.to_s == calculated_digit.to_s
  end
end
