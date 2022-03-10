# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

Movie.create(title: "Cast Away", year: 2000, plot: "Obsessively punctual FedEx executive Chuck Noland (Tom Hanks) is en route to an assignment in Malaysia when his plane crashes over the Pacific Ocean during a storm. The sole survivor of the flight, Chuck washes ashore on a deserted island. When his efforts to sail away and contact help fail, Chuck learns how to survive on the island, where he remains for years, accompanied by only his handmade volleyball friend, Wilson. Will Chuck ever return to civilization and reunite with his loved ones?")
Movie.create(title: "The Batman", year: 2022, plot: "Batman ventures into Gotham City's underworld when a sadistic killer leaves behind a trail of cryptic clues. As the evidence begins to lead closer to home and the scale of the perpetrator's plans become clear, he must forge new relationships, unmask the culprit and bring justice to the abuse of power and corruption that has long plagued the metropolis.")
Movie.create(title: "Beetlejuice", year: 1988, plot: "After Barbara (Geena Davis) and Adam Maitland (Alec Baldwin) die in a car accident, they find themselves stuck haunting their country residence, unable to leave the house. When the unbearable Deetzes (Catherine O'Hara, Jeffrey Jones) and teen daughter Lydia (Winona Ryder) buy the home, the Maitlands attempt to scare them away without success. Their efforts attract Beetlejuice (Michael Keaton), a rambunctious spirit whose 'help' quickly becomes dangerous for the Maitlands and innocent Lydia")
