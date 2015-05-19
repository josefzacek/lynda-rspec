require 'car'

describe 'Car' do
  describe 'attributes' do
    it 'allows reading and writting for :make' do
      car = Car.new
      car.make = 'Subaru'
      expect(car.make).to eq('Subaru')
    end

    it 'allows reading and writting for :year' do
      car = Car.new
      car.year = 2000
      expect(car.year).to eq(2000)
    end

    it 'allows reading and writting for :make' do
      car = Car.new
      car.make = 'Subaru'
      expect(car.make).to eq('Subaru')
    end

    it 'allows reading for :wheels' do
      car = Car.new
      expect(car.wheels).to eq(4)
    end

    it 'allows writting for :doors' do
      skip('skip msg')
    end
  end

  describe '.colors' do
    it 'should list array of colors' do
      ar = %w(blue, black, red, green)
      expect(Car.colors).to match_array(ar)
    end
  end

  describe '#full_name' do
    it 'returns a string in expected format' do
      @skoda = Car.new(year: 123, make: 'Skoda', color: 'red')
      expect(@skoda.full_name).to eq('123 Skoda (red)')
    end

    context 'when initialized with no arguments' do
      it 'returns default values' do
        @car = Car.new
        expect(@car.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end
end
