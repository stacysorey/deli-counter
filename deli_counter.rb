require "pry"
def line(array)
    if array.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently:" 
        array.each_with_index do |customers, index|
            current_line <<  " #{index + 1}. #{customers}"
        end
        puts current_line
    end
end

def take_a_number(deli, customer)
       if deli.empty?
        deli << customer 
        puts "Welcome, #{customer}. You are number 1 in line." 
       else
        new_line = deli << customer
        puts "Welcome, #{customer}. You are number #{new_line.size} in line."
    end
end

def now_serving(customers)
    if customers.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{customers[0]}."
    end
    customers.shift
end