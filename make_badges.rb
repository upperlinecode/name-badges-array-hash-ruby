require_relative 'company_data.rb'

#  In the adjacent file, there is a list of first names of all the people who work for a new app called Badges.
#  Their names are stored in an array called "employees".
#  For their Christmas party, Jose (the CEO) wants to make personalized mugs for each one with their names on it, but the trouble is that a lot of workers have the same first names.
#  They'll save a lot of money if they can know how many of each name to make. Jose is asking you, his newest engineer, to order the mugs.

# 1. How many total mugs will you need to order? In other words, many people work for the company?

puts(employees.count)


# 2. How many DIFFERENT names will you need to print? In other words, how many unique, individual names are there in the company?

puts(employees.uniq.count)


# 3. Almost forgot! Jose also needs you to print name tags for everyone for the Christmas party.
#    For every name in the employees array, print out a string that says "Hello! My name is ______"

for name in employees do
  puts "Hello! My name is #{name}"
end



# 4. Let's practice counting just one name. Find out what the first name in the array is.
#    Then, iterate over the array and see how many people in the list share that same name.

name1 = employees[0]
# puts name1
name1_count = employees.count(name1)
# puts name1_count
puts "There are #{name1_count} employees named #{name1}."


# 5. Finally, you'll need to create the list of how many mugs per name.
#    You can run this any way you like, but at the end of the day, if you don't have 220 mugs total, you should probably recheck your logic.

mugcount = {}

for name in employees do
  if mugcount.keys.include?(name)
    mugcount[name] += 1
  else
    mugcount[name] = 1
  end
end

print mugcount

# Debug / checker code
puts "\nTotal unique names: #{mugcount.keys.count}"
puts "\nTotal mugs: #{mugcount.values.sum}"
