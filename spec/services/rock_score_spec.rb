require_relative "../../app/services/rock_score.rb"

describe RockScore do
  it "computes score for search terms" do
    # behavior ->  10 * positive / (positive + neg, iow total)
    # * 10 so that we get a 0-10 scoring scale
  end
  it "returns 0 for unpopular terms"
  it "returns 10 for popular terms"
  it "returns mediocre results for mediocre terms"
  # edge case
  it "does not divide by 0"
end
