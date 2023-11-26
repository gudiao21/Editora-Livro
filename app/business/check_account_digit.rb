class CheckAccountDigit
  def initialize(account_number)
    @account_number = account_number
  end

  def check_digit
    i = @account_number.length + 1
    j = 0
    sum_product = 0

    while i > 1
      sum_product += @account_number[j].to_i * i
      i -= 1
      j += 1
    end

    (sum_product * 10) % 11
  end
end
