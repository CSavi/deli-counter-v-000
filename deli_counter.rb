require 'pry'
katz_deli = []

def line(in_line_array)
  if in_line_array.length == 0 
    puts "The line is currently empty."
  else 
    new_array = []
    in_line_array.each_with_index do |name, index|
      new_array << ("#{index + 1}. #{name})"
    end 
    puts "The line is currently: #{new_array.join(" ")}"
  end   
end   


def take_a_number(katz_deli, name)
  katz_deli << (name) 
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end  

def now_serving(next_person)
  if next_person.empty? 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{next_person[0]}."
    next_person.shift
  end 
end   