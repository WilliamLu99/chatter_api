# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Message.delete_all
will = User.create(name: "William")
bill = User.create(name: "Billy")

Message.create(sender: will, recipient: bill, content: "Hey what's up")
Message.create(sender: bill, recipient: will, content: "Not much wbu")
