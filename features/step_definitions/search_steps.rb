When(/^I search for (.*)$/) do |term|
  @score ||= {}
  @score[:term] = RockScore.for_term(term)
  pending # express the regexp above with the code you wish you had
end

Then(/^apple should have a higher score than microsoft$/) do
  pending # express the regexp above with the code you wish you had
end
