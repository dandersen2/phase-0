# Create Accountability Groups

# I worked on this challenge by myself

# I spent [3] hours on this challenge.


# 0. Pseudocode

  1) Create a names array containing all of the people in the cohort
  2) From this array create a new array that will be ordered randomly
  3) Generate a new array with all of the names in random order.
  4) If group is divisible cleany by 4, use groups of size 4, otherwise test to see if groups divide cleanly into 5
  5) Create an output hash that assigns the new groups a group number and lists the names
  6) Return or print the final output list


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
