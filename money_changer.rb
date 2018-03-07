require 'rspec'

class ChangeMachine
  def change(cents)
    denominations = [25,10,5,1]
    coins = []

    denominations.each do |denomination|
      while cents >= denomination
        coins << denomination
        cents -= denomination
      end
    end

    coins
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    let(:change_machine) { ChangeMachine.new }

    it 'should return [1] if given 1' do 
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] if given 2' do 
      expect(change_machine.change(2)).to eq([1, 1])
    end

    it 'should return [1, 1, 1] if given 3' do 
      expect(change_machine.change(3)).to eq([1, 1, 1])
    end

    it 'should return [1, 1, 1, 1] if given 4' do 
      expect(change_machine.change(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [5] if given 5' do 
      expect(change_machine.change(5)).to eq([5])
    end

    it 'should return [5, 1] if given 6' do 
      expect(change_machine.change(6)).to eq([5, 1])
    end

    it 'should return [5, 1, 1] if given 7' do 
      expect(change_machine.change(7)).to eq([5, 1, 1])
    end

    it 'should return [5, 1, 1, 1] if given 8' do 
      expect(change_machine.change(8)).to eq([5, 1, 1, 1])
    end

    it 'should return [5, 1, 1, 1, 1] if given 9' do 
      expect(change_machine.change(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return [10] if given 10' do 
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return [10, 1] if given 11' do 
      expect(change_machine.change(11)).to eq([10, 1])
    end

    it 'should return [10, 1, 1] if given 12' do 
      expect(change_machine.change(12)).to eq([10, 1, 1])
    end

    it 'should return [10, 1, 1, 1] if given 13' do 
      expect(change_machine.change(13)).to eq([10, 1, 1, 1])
    end

    it 'should return [10, 1, 1, 1, 1] if given 14' do 
      expect(change_machine.change(14)).to eq([10, 1, 1, 1, 1])
    end

    it 'should return [10, 5] if given 15' do 
      expect(change_machine.change(15)).to eq([10, 5])
    end

    it 'should return [10, 5, 1] if given 16' do 
      expect(change_machine.change(16)).to eq([10, 5, 1])
    end

    it 'should return [10, 5, 1, 1] if given 17' do 
      expect(change_machine.change(17)).to eq([10, 5, 1, 1])
    end    

    it 'should return [10, 5, 1, 1, 1] if given 18' do 
      expect(change_machine.change(18)).to eq([10, 5, 1, 1, 1])
    end

    it 'should return [10, 5, 1, 1, 1, 1] if given 19' do 
      expect(change_machine.change(19)).to eq([10, 5, 1, 1, 1, 1])
    end

    it 'should return [10, 10] if given 20' do 
      expect(change_machine.change(20)).to eq([10, 10])
    end

    it 'should return [10, 10, 1] if given 21' do 
      expect(change_machine.change(21)).to eq([10, 10, 1])
    end

    it 'should return [10, 10, 1, 1] if given 22' do 
      expect(change_machine.change(22)).to eq([10, 10, 1, 1])
    end

    it 'should return [10, 10, 1, 1, 1] if given 23' do 
      expect(change_machine.change(23)).to eq([10, 10, 1, 1, 1])
    end

    it 'should return [10, 10, 1, 1, 1, 1] if given 24' do 
      expect(change_machine.change(24)).to eq([10, 10, 1, 1, 1, 1])
    end

    it 'should return [25] if given 25' do 
      expect(change_machine.change(25)).to eq([25])
    end

    it 'should return [25, 25] if given 50' do 
      expect(change_machine.change(50)).to eq([25, 25])
    end

    it 'should return [25, 10, 5, 1] if given 41' do 
      expect(change_machine.change(41)).to eq([25, 10, 5, 1])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do 
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end








