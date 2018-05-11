require 'pry'
katz_deli = []

def line(in_line_array)
  if in_line_array.length == 0 
    puts "The line is currently empty."
  else 
    new_array = []
    in_line_array.each_with_index do |name, index|
      new_array << ("#{index + 1}. #{name}")
    end 
    puts "The line is currently: #{new_array.join(" ")}"
  end   
end   


def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
    puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end 

def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served."
  else 
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end   
end 