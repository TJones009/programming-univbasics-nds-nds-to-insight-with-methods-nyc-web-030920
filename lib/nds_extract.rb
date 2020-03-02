$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



def directors_totals(nds)
  results = {}
  director_index = 0
  
  while director_index < nds.length do
    director = nds[director_index]
    results[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  results
end

def gross_for_director(director_data)
  total = 0
  index = 0
  
  while index < director_data[:movies].length do
    total += director_data[:movies][index][:worldwide_grosses]
    index += 1
  end
  
  total
end