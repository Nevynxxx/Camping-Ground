Given /^no scenarios$/ do
end

Given /^a scenario with name "([^"]*)", author "([^"]*)" and number (\d+) from season (\d+)$/ do |name, author, number,season|
  @auth = Author.create! :firstname => "Benjamin", :lastname => "Bruck"
  @mod = Scenario.create!(:name => name, :author => @auth, :number => number, :season => season) 
end

When /^I visit the scenarios index$/ do
  visit scenarios_path
end
