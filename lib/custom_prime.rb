module CustomPrime
  def smallest_divisor
    # This will return smallest divisor, greater than 1, for a Integer greater than 1
    int_value = self.to_i
    raise Exception.new('Number not greater than 1') if int_value <= 1
    # This small optimiation produced a 50% performance gain for example when generating
    # first 100 primes.
    # 0.0021451379998325137 > 0.001276984000014636 execution time
    (2..Math.sqrt(int_value)).each do |divisor|
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

  # Here I'm also trying alternative approach using Sieve of Eratosthenes
  def is_primez?
    int_value = self.to_i
    # Stop going further if not an Integer greater than 1
    return false if int_value <= 1
    arr = [nil, nil] + (2..int_value).to_a
    arr.each do |c|
      next if c.nil?
      break if int_value < c * c
      # Previously marked members are already nil so I'll start at the multiple of c.
      (c * c).step(int_value, c) do |i|
        arr[i] = nil
      end
    end
    arr.compact.include?(int_value)
  end
end

class Integer ; include CustomPrime ; end
