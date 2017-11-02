require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Harry Potter', 15.00, 70, 'David Yates', 'JK Rowling')
  end
  # check initialization
  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end

    it 'is assigned runtime' do
      expect(@bluray.runtime).to eq(70)
    end

    it 'is assigned a director' do
      expect(@bluray.director).to eq('David Yates')
    end

      it 'is assigned a producer' do
        expect(@bluray.producer).to eq('JK Rowling')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Thor: Dark World'
      expect(@bluray.name).to eq('Thor: Dark World')
    end

    it 'assigns and reads the price' do
      @bluray.price = 3.00
      expect(@bluray.price).to eq(3.00)
    end

    it 'assigns and reads the runtime' do
      @bluray.runtime = 50
      expect(@bluray.runtime).to eq(50)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'Guy Ritchie'
      expect(@bluray.director).to eq('Guy Ritchie')
    end
    it 'assigns and reads the producer' do
      @bluray.producer = 'Zack Snyder'
      expect(@bluray.producer).to eq('Zack Snyder')
    end
  end
end
