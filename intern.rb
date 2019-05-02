module EmailReportable
	def send_report
		puts "Sending email..."
		# use email sending library
		puts "Email sent!"
	end
end

class Employee

	attr_reader :first_name, :last_name, :active, :salary
	attr_writer :first_name, :last_name, :active

	# attr_accessor :first_name, :last_name, :active, :salary

	def initialize(input_options)
		@first_name = input_options[:first_name]
		@last_name = input_options[:last_name] || "Doe"
		@salary = input_options[:salary]
		@active = input_options[:active]
	end

	def print_info
		puts "#{first_name} #{last_name} makes #{salary} a year."
	end

	def give_annual_raise
		@salary = 1.05 * @salary
	end
	
end

class Manager < Employee
	include EmailReportable

	attr_accessor :employees

	def initialize(input_options)
		super
		@employees = input_options[:employees]
	end

	def give_all_raises
		# loop through employees
		employees.each do |employee|
			# give each employee a raise (use give_annual_raise method)
			employee.give_annual_raise
		end
	end

	def fire_all_employees
		# loop through employees
		employees.each do |employee|
			# change employee active status to false
			employee.active = false
		end
	end
	
end

class Intern < Employee
	include EmailReportable
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(last_name: "Campos", salary: 70000, active: true, first_name: "Danilo")

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.send_report

intern = Intern.new(first_name: "Tiemae", last_name: "Roquerre", salary: 30000, active: true)

intern.print_info
intern.send_report



