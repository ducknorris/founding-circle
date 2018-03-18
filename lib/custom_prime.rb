module CustomPrime
  def smallest_divisor
    # This will return smallest divisor, greater than 1, for a Integer greater than 1
    int_value = self.to_i
    raise Exception.new('Number not greater than 1') if int_value <= 1
    (2..int_value - 1).each do |divisor|
      if int_value % divisor == 0
        # Stop and not go further if a divisor is found
        return divisor
      end
    end
    nil
  end

  def is_prime?
    int_value = self.to_i
    # Stop going further if not an Integer greater than 1
    return false if int_value <= 1
    return int_value.smallest_divisor ? false : true
  end
end

class Integer ; include CustomPrime ; end
