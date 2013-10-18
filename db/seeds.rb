# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# --------------------------------------------------
#  To implement changes run:
#   heroku run rake db:seed

@config = ActiveRecord::Base.configurations[::Rails.env]
ActiveRecord::Base.establish_connection


case @config["adapter"]
when "mysql", "mysql2"
  ActiveRecord::Base.connection.execute("TRUNCATE groups")
  ActiveRecord::Base.connection.execute("TRUNCATE guests")
  puts "Table groups truncated!"
  puts "Table guests truncated!"
when "sqlite", "sqlite3"
  ActiveRecord::Base.connection.execute("DELETE FROM groups")
  ActiveRecord::Base.connection.execute("DELETE FROM guests")
  puts "Table groups deleted!"
  puts "Table guests deleted!"
  ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence where name='groups'")
  ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence where name='guests'")
  puts "sqlite_sequence of groups deleted!"
  puts "sqlite_sequence of guests deleted!"
  ActiveRecord::Base.connection.execute("VACUUM")
  puts "database vacuumed!"
when "postgresql"
  # if you use postgresql 8.4 or later, you can use "TRUNCATE XXX RESTART IDENTITY"
#        ActiveRecord::Base.connection.execute("TRUNCATE #{table} RESTART IDENTITY")
#        puts "Table #{table} truncated!(with RESTART IDENTITY)"
  ActiveRecord::Base.connection.execute("TRUNCATE groups")
  ActiveRecord::Base.connection.execute("TRUNCATE guests")
  puts "Table groups truncated!"
  puts "Table guests truncated!"
  ActiveRecord::Base.connection.execute("SELECT setval('groups_id_seq', 1, false)");
  ActiveRecord::Base.connection.execute("SELECT setval('guests_id_seq', 1, false)");
  puts "Sequence (groups_id_seq) is reset!"
  puts "Sequence (guests_id_seq) is reset!"
end

groups = Group.create([ 
  { random_group_id: 3725 }, #1
  { random_group_id: 3981 }, #2
  { random_group_id: 3164 }, #3
  { random_group_id: 3247 }, #4
  { random_group_id: 3367 }, #5
  { random_group_id: 3464 }, #6
  { random_group_id: 3582 }, #7
  { random_group_id: 3614 }, #8
  { random_group_id: 3741 }, #9
  { random_group_id: 3869 }, #10
  { random_group_id: 3919 }, #11
  { random_group_id: 3032 }, #12
  { random_group_id: 3128 }, #13
  { random_group_id: 3242 }, #14
  { random_group_id: 3343 }, #15
  { random_group_id: 3421 }, #16
  { random_group_id: 3510 }, #17
  { random_group_id: 3698 }, #18
  { random_group_id: 3784 }, #19
  { random_group_id: 3838 }, #20
  { random_group_id: 3964 }, #21
  { random_group_id: 3672 }, #22
  { random_group_id: 3048 }, #23
  { random_group_id: 3723 }, #24
  { random_group_id: 3840 }  #25
]) 

puts "#{groups.count} groups created with first Id being #{groups.first.id}"

guests = Guest.create([ 
  { name: 'Ann Margolis', group_id: 1 }, 
  { name: 'Roy Margolis', group_id: 2 }, 
  { name: 'Connie Anderson', group_id: 3 }, 
  { name: 'Jeff Anderson', group_id: 3 }, 
  { name: 'Bob Ehrenberg', group_id: 4 }, 
  { name: 'Nic LeBlanc', group_id: 5 }, 
  { name: 'Jessie Ehrenberg', group_id: 5 }, 
  { name: 'Keely Crowley', group_id: 6 }, 
  { name: 'Colleen Andujar', group_id: 6 }, 
  { name: 'Cayden Andujar', group_id: 7 }, 
  { name: 'Stevie Freitas', group_id: 7 }, 
  { name: 'Colleen Freitas', group_id: 7 }, 
  { name: 'Stephanie Hay', group_id: 8 }, 
  { name: 'Stafford Hay', group_id: 8 }, 
  { name: 'Frieda Margolis', group_id: 8 }, 
  { name: 'Sarah Rebosa', group_id: 9 }, 
  { name: 'Mark Rebosa', group_id: 9 }, 
  { name: 'Megan Rebosa', group_id: 9 }, 
  { name: 'Alex Rebosa', group_id: 9 }, 
  { name: 'Melissa Sullivan', group_id: 10 }, 
  { name: 'Jon Sullivan', group_id: 10 }, 
  { name: 'Ryan Sullivan', group_id: 10 }, 
  { name: 'Jordan Sullivan', group_id: 10 }, 
  { name: 'Tina Anderson', group_id: 11 }, 
  { name: 'Winn Anderson', group_id: 11 }, 
  { name: 'Jessica', group_id: 12 }, 
  { name: 'Abbi', group_id: 12 }, 
  { name: 'Sebastian', group_id: 12 }, 
  { name: 'Leanne', group_id: 13 }, 
  { name: 'Alan', group_id: 13 }, 
  { name: 'Charlie', group_id: 13 }, 
  { name: 'Robert and Family', group_id: 14 }, 
  { name: 'Bryan Jenkins', group_id: 15 }, 
  { name: 'Megan Burke', group_id: 15 }, 
  { name: 'Kim Jenkins', group_id: 16 }, 
  { name: 'Wayne Jenkins', group_id: 16 }, 
  { name: 'Steven Jenkins', group_id: 16 }, 
  { name: 'Thomas Vernon', group_id: 17 }, 
  { name: 'Alexus Vaughn', group_id: 17 }, 
  { name: 'Cody Tapoler', group_id: 18 }, 
  { name: 'Emma Utz', group_id: 18 }, 
  { name: 'Mary Roth', group_id: 19 }, 
  { name: 'Rose Ehrenberg', group_id: 20 }, 
  { name: 'Brenda', group_id: 21 }, 
  { name: 'Ken', group_id: 21 }, 
  { name: 'Vanezza', group_id: 21 }, 
  { name: 'Hailey', group_id: 21 }, 
  { name: 'Albert', group_id: 21 }, 
  { name: 'Lee-Ann Piper', group_id: 22 }, 
  { name: 'Derek Piper', group_id: 22 }, 
  { name: 'Sydney Piper', group_id: 22 }, 
  { name: 'Cole Piper', group_id: 22 }, 
  { name: 'John McCoy', group_id: 23 }, 
  { name: 'Junior', group_id: 23 }, 
  { name: 'Plus One', group_id: 23 }, 
  { name: 'Chris Yeaple', group_id: 24 }, 
  { name: 'Plus One', group_id: 24 }, 
  { name: 'Lisa Yeaple', group_id: 25 }, 
  { name: 'Dan Yeaple', group_id: 25 }
])

puts "#{guests.count} groups created with first Id being #{guests.first.id}"