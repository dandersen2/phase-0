# Create Accountability Groups

# I worked on this challenge by myself

# I spent [3] hours on this challenge.


# 0. Pseudocode

  # 1) Create a names array containing all of the people in the cohort
  # 2) From this array create a new array that will be ordered randomly
  # 3) Generate a new array with all of the names in random order.
  # 4) If group is divisible cleany by 4, use groups of size 4, otherwise test to see if groups divide cleanly into 5
  # 5) Create an output hash that assigns the new groups a group number and lists the names
  # 6) Return or print the final output list


roster_array = ["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian   Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice   Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon   Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard",       "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina     Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor   Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia   Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh       Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian     Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N         Wood", "Ryan Zell"]

def group_maker(roster_array)
  if roster_array.length % 4 == 0
    accountability_groups = roster_array.shuffle.each_slice(4).to_a
  elsif roster_array.length % 5 == 0
    accountability_groups = roster_array.shuffle.each_slice(5).to_a
  end
  groups_hash = Hash.new("")
  i = 0
  while i <= accountability_groups.length
    groups_hash["Accountability Group: #{i + 1}"] = accountability_groups[i].to_s
    i += 1
  end
  p groups_hash
end

group_maker(roster_array)

# "Accountability Group #" + " " +  i + ":"

# h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }

# REFLECTIONS:

# What was the most interesting and most difficult part of this challenge?
  The most difficult part of this challenge was creating the array with all of the names in it. Once we can work with some more advanced stuff, maybe we could pull a large file from an external source or something. Also, finding a way to split the array into groups of the desired size required a good amount of research and trial and error. Iterating through and splitting based on a certain modulo output seemed to get very complicated quickly.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  I am getting better at looking at the problem and then deconstructing it into each intermediary part that I will need in order to produce the next. This is important because sometimes if you start coding first before planning, you start performing unnecessary steps becuase you dont have a concrete goal in mind about what must be done next.

# Was your approach for automating this task a good solution? What could have made it even better?

# What data structure did you decide to store the accountability groups in and why?

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

