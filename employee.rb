# Represent an employee as an array

# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "Campos", 70000, true]

# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."


# Represent an employee using a hash

# symbol syntax
employee1 = {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
# javascript syntax
employee2 = {last_name: "Campos", salary: 70000, active: true, first_name: "Danilo"}

puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."