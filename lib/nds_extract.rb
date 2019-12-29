$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_sum = 0

  director_sum += (director_data)
 
  director_sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0 
  while row_index < nds.length do
    column_index = 0 
    while column_index < nds[row_index][:movies].length do
    director_sum = gross_for_director(nds[row_index][:movies][column_index][:worldwide_gross])
   
    column_index +=1 
    end
    
    result[nds[row_index][:name]] =  director_sum
    row_index+=1
  end
  
  
  
  result
  
end
