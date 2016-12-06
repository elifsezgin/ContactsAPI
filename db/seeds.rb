# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

elif = User.create(username: 'elifsez')
ezgi = User.create(username: 'ezgibir')

c1 = Contact.create(name: 'Elif', email: 'elif@fsdf', user_id: 1)
c2 = Contact.create(name: 'Ezgi', email: 'ezgi@fsdf', user_id: 2)

cs1 = ContactShare.create(user_id: 1, contact_id: 1)
cs2 = ContactShare.create(user_id: 1, contact_id: 2)
cs3 = ContactShare.create(user_id: 2, contact_id: 2)
cs4 = ContactShare.create(user_id: 2, contact_id: 1)
