require_relative '../lib/test_4'

describe 'test' do 

	it 'sum of three elements of enum, specified by a block' do
		arrayReloded = ArrayReloded.new([2,3,4])

		expect(arrayReloded.injection{|x, y| x + y}).to eq(9)
	end
	
	it 'sum of three elements of enum with argument, specified by a block' do
		arrayReloded = ArrayReloded.new([2,3,5])

		expect(arrayReloded.injection(2){|x, y| x + y}).to eq(12)
	end

	it 'returns subtraction of 2,3,4 passed 5 as argument = -4, specified by a block' do
		arrayReloded = ArrayReloded.new([2,3,4])

		expect(arrayReloded.injection(5){|x,y| x - y}).to eq(-4)
	end

	it 'returns subtraction of 2,3 and 4 = -5, specified by a block' do
		arrayReloded = ArrayReloded.new([2,3,4])

		expect(arrayReloded.injection{|x, y| x -y}).to eq(-5)
	end

	it 'multiplication of 1,2,3 = 6, specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection{|x, y| x *y}).to eq(6)
	end

	it 'multiplication of 2,3,4 with 6 as argument = , specified by a block' do
		arrayReloded = ArrayReloded.new([2,3,4])

		expect(arrayReloded.injection(2){|x, y| x *y}).to eq(48)
	end

end