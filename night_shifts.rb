require 'pry'

# Baseline: Given an array, create a hash in which the key is an element in the array and the value is the number of occurrences of that element.

# Extension: Given the hash from the baseline challenge, print each key-value pair, in descending order by occurrence number, with the phrase “Casey worked 6 night shifts.” If a person only worked one night shift, the phrase should be “Josh worked 1 night shift.”

night_shifts = ["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"]

night_hash = {}

night_shifts.each do |name|
  number = night_shifts.count(name)
  night_hash[name] = number
end

night_hash_sorted = night_hash.sort_by{|k, v| v}
print night_hash_sorted

#binding.pry