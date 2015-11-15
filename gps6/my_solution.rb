# Virus Predictor

# I worked on this challenge with Zach Schatz
# We spent 2.5 hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative will allow our file to see the state data stored within the state_data. As opposed to 'require', require_relative denotes specificity that data from another file will be directly used. 'Require' may be more general to someone unfamiliar with the code being executed. Require_relative is also faster than require.
#

class VirusPredictor

  #Setting up and defining instance variables to be used throughout the class. The instance variables are equal to the parameters used as inputs when the class is created.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Return the outputs of the predicted_deaths and speed_of_spread methods -- easier to get your outputs as opposed to calling individually
  # This method is for public use and allows a user to retrieve the outputs from two private methods without giving access to those methods' code.

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  # def data_print
  #   STATE_DATA.each do |state|
  #     @state = VirusPredictor.new(@state, STATE_DATA[@state][@population_density],
  #     STATE_DATA[@state][@population])
  #     @state.virus_effects
  #   end
  # end

  private

  # Determine the number of deaths based on population density algorithm. Calculation will round down to the nearest human. Print statement for number of deaths within that state, giving a readable output to the user.

  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    number_of_deaths = number_of_deaths.floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determine the speed at which the virus will spread across the state based on the population_density. Incrementing speed based on the density. Prints out statement for number of months it will take to spread across the state.

  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

def data_print
  STATE_DATA.each do |current_state|
    state = VirusPredictor.new(current_state[0], current_state[1][:population_density], current_state[1][:population])
    state.virus_effects
    end
  end

data_print
#=======================================================================
# test = VirusPredictor.new
# test = VirusPredictor.new(state_of_origin, population_density, population)
# test = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# p test.data_print

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin
QUESTION: What are the differences between the two different hash
syntaxes shown in the state_data file?
    ANSWER: the outer hash that holds all of the states uses the
    "=>" (hashrocket) syntax between the keys (as strings) and their
    values whereas the inner hashes, which hold the population data
    use the "key: value" syntax that utilizes symbols. They are
    equivalent to the interpreter but using them both allows for
    the data to be more easily readable to the user by differentiating
    the hash and sub hashes. The symbols can also be called using ":"
    instead of the key name as a string.

QUESTION: What does require_relative do? How is it different from require?
    ANSWER: require_relative allows the file to access data from another
    file in the same directory or project. The require method can be
    used to access other files as well but the file directory address
    would need to be specified.

QUESTION: What are some ways to iterate through a hash?
    ANSWER: Using the .each and map methods are two of the more common
    ways of iterating through each element in a hash. There are also
    variations on these methods that allow you to iterate only over each
    key or each value.

QUESTION: When refactoring virus_effects, what stood out to you about
the variables, if anything?
    ANSWER: We didn't need all of the variables to be arguments for
    the virus_effects method or the two methods that it calls. THis is
    because all of the variables that are used in these methods are already
    declared as instance variables in the initialize method and can therefore
    be accessed anywhere within the class.

QUESTION: What concept did you most solidify in this challenge?
    ANSWER: This assignment helped me solidify the correct syntax to use
    when accessing data within nested data structures. It was also good
    practice for creating classes and using instance variables across
    multiple methods within a class instance.
=end
