class RankingController < ApplicationController
	# def index
	# 	binding.pry
	# 	reviews = Review.group(:vegetable_id).sum(:general_rate)
	# 	divisors = Review.group(:vegetable_id).count
	# 	rankings = []


	# 	@ranking = reviews.each do |index, review|
	# 		if divisors[index].present?
	# 			ranking = review / divisors[index]
	# 			rankings.push(ranking)
	# 		end
	# 	end
	# 	vegetables = Review.group(:vegetable_id)

	# end
end
  # .order('count_general_rate DESC').limit(10).count(:general_rates).keys
  #     @ranking = vegetable_ids.map { |id| Vegetable.find(id) }
