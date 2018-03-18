require_relative 'custom_prime'

class Table
  def self.generate_primes(n)
    arr = []
    i = 2
    while arr.size < n
      arr << i if i.is_prime?
      i += 1
    end
    return arr
  end

  def self.generate_table(n)
    rows_or_cols = generate_primes(n)
    output = []
    output << "\n"
    output << "Multiplication table for the first #{n} prime numbers\n\n"
    output << formatted_header(rows_or_cols)
    output << formatted_rows(rows_or_cols)
    output << "\n"
    output.join("\n")
  end

  def self.print(n)
    puts generate_table(n)
  end

  private

    def self.formatted_header(cols)
      header = cols.map do |col|
        sprintf('%-4d| ', col)
      end
      (['    | '] + header).join
    end

    def self.formatted_rows(rows_or_cols)
      output = []
      rows_or_cols.each do |row|
        computed_row = rows_or_cols.map do |col|
          sprintf('%-4d| ', col * row)
        end
        output << ([sprintf('%-4d| ', row)] + computed_row).join
      end
      output.join("\n")
    end
end
