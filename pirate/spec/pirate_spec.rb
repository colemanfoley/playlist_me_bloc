class Pirate
	def chant
		"Yo ho ho and a bottle of rum!"
	end
end

describe "Pirate" do
	it "should say 'Yo ho ho and a bottle of rum!' when the chant method is called on a Pirate" do
		pirate = Pirate.new
		pirate_chant = pirate.chant
		pirate_chant.should == "Yo ho ho and a bottle of rum!"
	end
end
