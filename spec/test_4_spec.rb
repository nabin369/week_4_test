require_relative '../lib/test_4'

describe 'test' do 

	it 'sum of three elements of enum, specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection{|x, y| x + y}).to eq(6)
	end
	
	it 'sum of three elements of enum with argument, specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection(2){|x, y| x + y}).to eq(8)
	end

	it 'returns subtraction of 1 and 4 passed 5 as argument = , specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection(5){|x,y| x - y}).to eq(-1)
	end

	it 'returns subtraction of 1,2 and 3, specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection{|x, y| x -y}).to eq(-4)
	end

	it 'multiplication of 1,2,3 = 6, specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection{|x, y| x *y}).to eq(6)
	end

	it 'multiplication of 1,2,3 with 6 as argument, specified by a block' do
		arrayReloded = ArrayReloded.new([1,2,3])

		expect(arrayReloded.injection(6){|x, y| x *y}).to eq(36)
	end

end