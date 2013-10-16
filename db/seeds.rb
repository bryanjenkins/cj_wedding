# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


groups = Group.create([
  { email: 'bryan@captiveone.com', random_group_id: 9288399 },
  { email: 'wayne@captiveone.com', random_group_id: 9283774 }
])

guests = Guest.create([
  { name: 'Bryan Jenkins', group_id: 1 },
  { name: 'Megan Burke', group_id: 1 },
  { name: 'Wayne Jenkins', group_id: 2 },
  { name: 'Kim Jenkins', group_id: 2 },
  { name: 'Steven Jenkins', group_id: 2 }
])