require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        if @salaries.include?(title)
            return true
        else
            return false
        end
    end

    def >(startup)
        if @funding > startup.funding
            return true
        else
            return false
        end
    end

    def hire(name, title)
        if valid_title?(title)
            @employees << Employee.new(name, title)
        else
            raise "Error"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(emp)
        pay =  @salaries[emp.title]
        if @funding >= pay
            @funding -= pay
            emp.pay(pay)
        else
            raise "No money"
        end
    end

    def payday
        @employees.each { |emp| pay_employee(emp) }
    end

    def average_salary
        count = 0
        @employees.each { |emp| count += @salaries[emp.title] }
        count / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(strt)
        @funding += strt.funding
        strt.salaries.each do |k, v|
            if !@salaries.include?(k)
                @salaries[k] = v
            end
        end
        strt.employees.each { |emp| @employees << emp }
        strt.close
    end
end
