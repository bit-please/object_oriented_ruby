require "./employee.rb"
require "./email_reportable.rb"

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


