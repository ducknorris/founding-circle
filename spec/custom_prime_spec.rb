require 'spec_helper'
require_relative '../lib/custom_prime'

describe CustomPrime do
  describe 'Integer extra methods' do
    let!(:num) { 100 }

    it { expect(num).to respond_to(:smallest_divisor) }
    it { expect(num).to respond_to(:is_prime?) }
  end

  describe '#smallest_divisor' do
  end

  describe '#is_prime?' do
  end
end
