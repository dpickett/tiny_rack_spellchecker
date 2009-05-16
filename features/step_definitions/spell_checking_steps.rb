Given /^I have supplied the content '(.*)'$/ do |content|
  @params ||= {}
  @params["params"] ||= ["en"]
  @params["method"] = "checkWords"
  @params["params"] << content.split(" ") 
end


When /^I do a spellcheck$/ do
  post '/spell_checker', @params.to_json
end

Then /^I should get a response$/ do
  assert last_response.ok?
end

Then /^there should be (\d*) errors?$/ do |error_count|
  json_hash = JSON.parse(last_response.body) 
  assert_equal error_count.to_i, json_hash["result"].size
end

