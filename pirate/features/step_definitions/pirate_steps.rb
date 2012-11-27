class CucumberPirate
	def chant
		"Yo ho ho and a bottle of rum!"
	end
end

Given /^a pirate$/ do
	@pirate = CucumberPirate.new
end

When /^I call the chant method$/ do
	@pirate_chant = @pirate.chant
end

Then /^I should see "(.*?)"$/ do |arg1|
	@pirate_chant.should == arg1
end
