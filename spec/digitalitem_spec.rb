require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    # initialize item
    @digi = Digital_item.new('Look what you made me do', 1.50)
  end
  # check initialization
  describe 'Initialization' do
    it 'should be a digi' do
      expect(@digi).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digi).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digi.name).to eq('Look what you made me do')
    end

    it 'is assigned a price' do
      expect(@digi.price).to eq(1.50)
    end

    describe 'Methods' do
      it 'should be able to stock' do
        result = @digi.stock 5
        expect(result).to eq(1)
        expect(@digi.quantity).to eq(1)
      end

      it 'should not be able to sell more digis than we have' do
        result = @digi.sell 6
        expect(result).to eq(1)
        expect(@digi.quantity).to eq(1)
      end

      it 'should be able to sell digis and update quantity' do
        result = @digi.sell 3
        expect(result).to eq(1)
        expect(@digi.quantity).to eq(1)
      end

    end
  end
end
