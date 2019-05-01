class Employee

	attr_reader :first_name, :last_name, :active, :salary
	attr_writer :first_name, :last_name, :active

	# attr_accessor :first_name, :last_name, :active, :salary

	def initialize(input_options)
		@first_name = input_options[:first_name]
		@last_name = input_options[:last_name] 
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

	def initialize(input_options)
		super
		@employees = input_options[:employees]
	end

	def send_report
		puts "Sending email..."
		# use email sending library
		puts "Email sent!"
	end
	
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(last_name: "Campos", salary: 70000, active: true, first_name: "Danilo")

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report