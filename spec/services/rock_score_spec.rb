require_relative "../../app/services/rock_score.rb"
require_relative "../../app/services/search_engine.rb"

describe RockScore do
  # behavior ->  10 * positive / (positive + neg, iow total)
  # * 10 so that we get a 0-10 scoring scale
  it "computes score for search terms" do
    search_engine_double = double(:count_results)
    allow(search_engine_double).to receive(:count_results).with("apple rocks").and_return(0)
    allow(search_engine_double).to receive(:count_results).with("apple rocks").and_return(1)
    expect(RockScore.for_term("apple")).to eq(0.0)
  end
  it "returns 0 for unpopular terms"
  it "returns 10 for popular terms"
  it "returns mediocre results for mediocre terms"
  # edge case
  it "does not divide by 0"
end
