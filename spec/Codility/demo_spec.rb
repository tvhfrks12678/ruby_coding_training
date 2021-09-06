require_relative '../../lib/Codility/demo.rb'
class Problem
	attr_reader :input, :answer
	def initialize(input, answer)
		@input = input
		@answer = answer
	end
end

def expect_problem(input, answer)
	it "return #{answer}" do
		expect(solution(input)).to  eq answer
	end
end

describe 'demo' do
	problems = []

	problems.push(Problem.new([1, 3, 6, 4, 1, 2], 5))
	problems.push(Problem.new([1, 2, 3], 4))
	problems.push(Problem.new([-1, -3], 1))
	problems.push(Problem.new([-1, -3, 1], 2))
	problems.push(Problem.new([1], 2))
	problems.push(Problem.new([1,2,3,4,5,6,7,8,9,10,11,12,20,21,-1], 13))
	problems.push(Problem.new([1,2,3,20,21,-1], 4))
	problems.push(Problem.new([-1, 0, 1000000], 1))
	problems.push(Problem.new([-1, 0, 1, 3, 2,1000000], 4))
	problems.push(Problem.new([*(-1000000..1000000)].shuffle, 1000001))
	problems.push(Problem.new([-1, 0, -3, 2, 3 ], 1))
	problems.push(Problem.new([-1, 0, 1, 2, 3, 5], 4))
	problems.push(Problem.new([1000000, -1000000], 1))
	problems.push(Problem.new([999999,1000000], 1))

	problems.each do |problem|
		input = problem.input
		answer = problem.answer
		if input.length > 20
			context "input start:#{input.min} end:#{input.max}" do
				expect_problem(input, answer)
			end			
			next
		end

		context "input #{input}" do
			expect_problem(input, answer)
		end
	end
end



