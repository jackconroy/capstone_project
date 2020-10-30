# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Jack", email: "Jack@gmail.com", password_digest: "245gsttfs4gtfasfsg4", location: "Chicago")
User.create(name: "Claire", email: "Claire@gmail.com", password_digest: "222225gsttfs4sg4", location: "Chicago")
User.create(name: "Foster", email: "Foster@gmail.com", password_digest: "14gnassfasfsg4", location: "San Francisco")
User.create(name: "Mike", email: "Mike@gmail.com", password_digest: "fs4gtfasfsg4", location: "Burlington")
User.create(name: "Will", email: "Will@gmail.com", password_digest: "245gfs4gtfasfsg4", location: "Austin")

Beer.create(name: "Heady Topper", brewerydb_api_id: "ght24s", image: "", brewery: "The Alchemist", abv: 8.0, style: "Double IPA")
Beer.create(name: "Apex Predator", brewerydb_api_id: "55tyg", image: "", brewery: "Off Color", abv: 6.5, style: "Farmhouse Saison")
Beer.create(name: "Juice Pants", brewerydb_api_id: "256hst42", image: "", brewery: "Maplewood", abv: 7.0, style: "Hazy IPA")
Beer.create(name: "Edward", brewerydb_api_id: "ffst2tgd", image: "", brewery: "Hill Farmstead", abv: 5.2, style: "American Pale Ale")
Beer.create(name: "Rauchbier", brewerydb_api_id: "fdghktt256", image: "", brewery: "Dovetail", abv: 5.3, style: "Rauch")
Beer.create(name: "Festbier", brewerydb_api_id: "fdhfkgj5", image: "", brewery: "Maplewood", abv: 4.5, style: "Marzen Lager")
Beer.create(name: "Spaten Lager", brewerydb_api_id: "fdgnhjt5", image: "", brewery: "Spaten", abv: 5.2, style: "Helles Lager")
Beer.create(name: "Foggy Geezer", brewerydb_api_id: "uug2dg", image: "", brewery: "Warpigs", abv: 6.8, style: "Hazy IPA")
Beer.create(name: "12th of Never", brewerydb_api_id: "7586nfss", image: "", brewery: "Lagunitast", abv: 5.5, style: "Pale Ale")
Beer.create(name: "Daisy Cutter", brewerydb_api_id: "gjghgs2s", image: "", brewery: "Half Acre", abv: 5.2, style: "Pale Ale")

TastingNote.create(keyword: "Hoppy")
TastingNote.create(keyword: "Bitter")
TastingNote.create(keyword: "Sweet")
TastingNote.create(keyword: "Crisp")
TastingNote.create(keyword: "Floral")
TastingNote.create(keyword: "Citrus")
TastingNote.create(keyword: "Roasted") 
TastingNote.create(keyword: "Malt")
TastingNote.create(keyword: "Sour")
TastingNote.create(keyword: "Balanced")


Vote.create(user_id: 1, beer_id: 1, vote_value: 1)
Vote.create(user_id: 1, beer_id: 2, vote_value: 1)
Vote.create(user_id: 1, beer_id: 3, vote_value: 1)
Vote.create(user_id: 1, beer_id: 4, vote_value: 1)
Vote.create(user_id: 1, beer_id: 5, vote_value: 1)
Vote.create(user_id: 1, beer_id: 6, vote_value: 1)
Vote.create(user_id: 1, beer_id: 7, vote_value: 1)
Vote.create(user_id: 1, beer_id: 8, vote_value: 1)
Vote.create(user_id: 1, beer_id: 9, vote_value: -1)
Vote.create(user_id: 1, beer_id: 10, vote_value: 1)

Vote.create(user_id: 2, beer_id: 1, vote_value: 1)
Vote.create(user_id: 2, beer_id: 2, vote_value: 1)
Vote.create(user_id: 2, beer_id: 3, vote_value: 1)

Vote.create(user_id: 3, beer_id: 1, vote_value: 1)
Vote.create(user_id: 3, beer_id: 2, vote_value: -1)
Vote.create(user_id: 3, beer_id: 3, vote_value: -1)

Vote.create(user_id: 4, beer_id: 1, vote_value: -1)

Vote.create(user_id: 5, beer_id: 10, vote_value: 1)

BeerTastingNote.create(beer_id: 1, tasting_note_id: 1)
BeerTastingNote.create(beer_id: 1, tasting_note_id: 4)
BeerTastingNote.create(beer_id: 1, tasting_note_id: 5)
BeerTastingNote.create(beer_id: 2, tasting_note_id: 4)
BeerTastingNote.create(beer_id: 3, tasting_note_id: 1)
BeerTastingNote.create(beer_id: 4, tasting_note_id: 1)
BeerTastingNote.create(beer_id: 5, tasting_note_id: 7)
BeerTastingNote.create(beer_id: 6, tasting_note_id: 8)
BeerTastingNote.create(beer_id: 7, tasting_note_id: 4)
BeerTastingNote.create(beer_id: 8, tasting_note_id: 4)
BeerTastingNote.create(beer_id: 9, tasting_note_id: 2)
BeerTastingNote.create(beer_id: 10, tasting_note_id: 1)


UserTastingNote.create(user_id: 1, tasting_note_id: 1)
UserTastingNote.create(user_id: 1, tasting_note_id: 4)
UserTastingNote.create(user_id: 1, tasting_note_id: 5)
UserTastingNote.create(user_id: 1, tasting_note_id: 10)

UserTastingNote.create(user_id: 2, tasting_note_id: 1)
UserTastingNote.create(user_id: 2, tasting_note_id: 7)
UserTastingNote.create(user_id: 2, tasting_note_id: 4)

UserTastingNote.create(user_id: 3, tasting_note_id: 2)
UserTastingNote.create(user_id: 3, tasting_note_id: 5)

UserTastingNote.create(user_id: 4, tasting_note_id: 1)