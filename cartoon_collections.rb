def square_array(array)
  array.map do |element|
    element * element
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.collect do |element|
    "#{element.capitalize()}!"
  end
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? do |element|
    element.length > 4
  end
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  i = 0
  
  planeteer_calls.any? do |element|
    while i < valid_calls.count do
      if element == valid_calls[i]
        return element
      end
      i++
    end
  end
  return nil
end
