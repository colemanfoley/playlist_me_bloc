Feature: pirate chants
	Pirates spend a lot of time on boats
	Therefore they need something to pass the time
	That is why they chant Yo ho ho and a bottle of rum!

	Scenario: pirate chants yo ho ho and a bottle of rum!
		Given a pirate
		When I call the chant method
		Then I should see "Yo ho ho and a bottle of rum!"
