require 'spec_helper'
require_relative '../lib/table'

describe Table do
  describe '.generate_primez' do
    it 'generates array of prime numbers with size of 5' do
      expect(Table.generate_primez(5).size).to eq(5)
    end

    it 'generates array of first 5 prime numbers' do
      expect(Table.generate_primez(5)).to eq([2, 3, 5, 7, 11])
    end
  end

  describe '.generate_primes' do
    it 'generates array of prime numbers with size of 5' do
      expect(Table.generate_primes(5).size).to eq(5)
    end

    it 'generates array of first 5 prime numbers' do
      expect(Table.generate_primes(5)).to eq([2, 3, 5, 7, 11])
    end
  end

  describe '.generate_table' do
    it 'prints out a table of 3 by 3 when for first 2 numbers' do
      expect(Table.generate_table(2)).to eq(
        [
          "\n",
          "Multiplication table for the first 2 prime numbers\n\n",
          "    | 2   | 3   | ",
          "2   | 4   | 6   | ",
          "3   | 6   | 9   | ",
          "\n"
        ].join("\n")
      )
    end

    it 'prints out a table of 8 by 8 when for first 7 numbers' do
      expect(Table.generate_table(7)).to eq(
        [
          "\n",
          "Multiplication table for the first 7 prime numbers\n\n",
          "    | 2   | 3   | 5   | 7   | 11  | 13  | 17  | ",
          "2   | 4   | 6   | 10  | 14  | 22  | 26  | 34  | ",
          "3   | 6   | 9   | 15  | 21  | 33  | 39  | 51  | ",
          "5   | 10  | 15  | 25  | 35  | 55  | 65  | 85  | ",
          "7   | 14  | 21  | 35  | 49  | 77  | 91  | 119 | ",
          "11  | 22  | 33  | 55  | 77  | 121 | 143 | 187 | ",
          "13  | 26  | 39  | 65  | 91  | 143 | 169 | 221 | ",
          "17  | 34  | 51  | 85  | 119 | 187 | 221 | 289 | ",
          "\n"
        ].join("\n")
      )
    end
  end
end
