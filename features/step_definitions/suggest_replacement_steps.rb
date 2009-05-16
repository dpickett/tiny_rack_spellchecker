Given /^I have entered the word '(.*)'$/ do |word|
  @params = {}
  @params["params"] = ["en"]
  @params["params"] << word
  @params["id"] = "c0"
end

When /^I request possible replacements$/ do
  @params["method"] = "getSuggestions"
  post "/spell_checker", @params.to_json
  @json_hash = JSON.parse(last_response.body)
  @result = @json_hash["result"]
end

Then /^I should get an array of results$/ do
  assert_instance_of Array, @result
end

Then /^I should see '(.*)' as a replacement option$/ do |word|
  assert @result.include?(word)
end

Then /^I should get a position identifier so I can perform a valid replacement$/ do
  assert_equal @params["id"], @json_hash["id"] 
end

