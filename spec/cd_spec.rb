require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Hotel Paper', 24.99, 10, 'Michelle Branch', 40)
  end

  # check initialization
  # check that it is an instance of Cd
  describe 'Initialization' do
    it 'is an instance of the Item class' do
      expect(@cd).to be_instance_of(Cd)
    end
    # check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Hotel Paper')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(24.99)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(10)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Michelle Branch')
    end

      it 'is assigned runtime' do
        expect(@cd.runtime).to eq(40)
      end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Hotel Paper'
      expect(@cd.name).to eq('Hotel Paper')
    end

    it 'assigns and reads the price' do
      @cd.price = 50.00
      expect(@cd.price).to eq(50.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 12
      expect(@cd.tracks).to eq(12)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Vanessa Carlton'
      expect(@cd.artist).to eq('Vanessa Carlton')
    end

    it 'assigns and reads the runtime' do
      @cd.runtime = 45
      expect(@cd.runtime).to eq(45)
    end
  end  
end
