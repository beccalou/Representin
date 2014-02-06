# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Alison = User.create(first_name: "Alison", last_name: "Ackers", email: "alison@email.com", address: "1 Main St., Cambridge, MA 02142")

John = User.create(first_name: "John", last_name: "Jackson", email: "john@email.com", address: "350 5th Ave, New York, NY 10118")

Marcy = User.create(first_name: "Marcy", last_name: "Markerson", email: "marcy@email.com", address: "500 W Jackson Blvd #107, Chicago, IL 60661")