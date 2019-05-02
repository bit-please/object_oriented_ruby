require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Actualize::Employee.new(last_name: "Campos", salary: 70000, active: true, first_name: "Danilo")

manager = Actualize::Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.send_report

intern = Actualize::Intern.new(first_name: "Tiemae", last_name: "Roquerre", salary: 30000, active: true)

intern.print_info
intern.send_report