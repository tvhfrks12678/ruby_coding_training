require_relative '../../lib/Codility/demo.rb'

describe 'demo' do

	problems = []

	problems.push({input: [1, 3, 6, 4, 1, 2], answer: 5})
	problems.push({input: [1, 2, 3], answer: 4})
	problems.push({input: [-1, -3], answer: 1})
	problems.push({input: [-1, -3, 1], answer: 2})
	problems.push({input: [1], answer: 2})
	problems.push({input: [1,2,3,4,5,6,7,8,9,10,11,12,20,21,-1], answer: 13})
	problems.push({input: [1,2,3,20,21,-1], answer: 4})
	problems.push({input: [1000000, -1000000], answer: 1000001})
	problems.push({input: [999999,1000000], answer: 1000001})
	problems.push({input: [-1, 0, 1000000], answer: 1})
	problems.push({input: [-1, 0, 1, 3, 2,1000000], answer: 4})
	problems.push({input: [*(-1000000..1000000)].shuffle, answer: 1000001})

	problems.each do |problem|
		input = problem[:input]
		answer = problem[:answer]
		if input.length > 20
			context "input 最小:#{input.min} 最大:#{input.max}" do
				it "return #{answer}" do
					expect(solution(input)).to  eq answer
				end
			end			
			next
		end

		context "input #{input}" do
			it "return #{answer}" do
				expect(solution(input)).to  eq answer
			end
		end
	end
end