require_relative 'employee.rb'
class Manager < Employee
  attr_accessor :employees
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

   def bonus(multiplier)
    bonus = 0
    @employees.each do|emp| 
      bonus += emp.salary 
      if emp.is_a?(Manager)
        emp.employees.each do |emp2|
          bonus += emp2.salary
        end
      end
    end
    bonus *= multiplier
  end
end