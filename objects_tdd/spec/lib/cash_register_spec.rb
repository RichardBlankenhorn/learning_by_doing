require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do
  let(:register) { CashRegister.new }
  it 'should be a cash_register' do
    expect(register).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should return 0 for a new cash_register' do
      expect(register.total).to eq(0)
    end
  end

  describe '#purchase(amount)' do
    it 'should add purchase amount to total' do
      expect(register.purchase(50)).to eq(50)
    end
  end

  describe '#payment(amount)' do
    context 'when total is greater than payment amount' do
      before do
        register.purchase(60)
      end
      it 'should subtract payment amount from total and return new total' do
        expect(register.payment(50)).to eq(10)
      end
    end
    context 'when the total is less than payment amount' do
      before do
        register.purchase(50)
      end
      it 'should subtract amount from total and return 0' do
        expect(register.payment(60)).to eq(0)
      end
    end
    context 'when the total is equal to payment amount' do
      it 'should subract amount from total and return 0' do
        expect(register.payment(60)).to eq(0)
      end
    end
  end
end
