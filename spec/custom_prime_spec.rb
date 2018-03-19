require 'spec_helper'
require_relative '../lib/custom_prime'

describe CustomPrime do
  describe 'Integer extra methods' do
    let!(:num) { 100 }

    it { expect(num).to respond_to(:smallest_divisor) }
    it { expect(num).to respond_to(:is_prime?) }
    it { expect(num).to respond_to(:is_primez?) }
  end

  describe '#smallest_divisor' do
    it 'raise error if number not greater than 1' do
      expect{ 1.smallest_divisor }.to raise_error(Exception).with_message('Number not greater than 1')
    end

    it 'returns nil for a number that has no other divisors other than 1 and self' do
      expect(7.smallest_divisor).to be_nil
    end

    it 'returns smallest divisor for a number that has other divisor than 1 and self' do
      expect(105.smallest_divisor).to eq(3)
    end
  end

  describe '#is_prime?' do
    it 'returns true for a prime number' do
      expect(19.is_prime?).to be_truthy
    end

    it 'returns false for not a prime number' do
      expect(422.is_prime?).to be_falsey
    end
  end

  describe '#is_primez?' do
    it 'returns true for a prime number' do
      expect(19.is_primez?).to be_truthy
    end

    it 'returns false for not a prime number' do
      expect(422.is_primez?).to be_falsey
    end
  end
end
