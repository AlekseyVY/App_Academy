# Sample Inputs and Outputs:

# An input of 30 should output 11250
# An input of 50 should output 25000
# You know the algorithm involves these steps in some order:

# Calculate how much money they'll have by multiplying by the number of years they have left until retirement.
# Estimate your child's current bank account by squaring their age.
# Estimate your child's age by dividing your age by two.
# Calculate how many years your child has left until they retire at age 65


def child_age(age)
    child_age = (age / 2)
end

def current_bank_account_of_child(age)
    child_age(age)**2
end

def years_to_child_retire(age)
    (65 - child_age(age))
end

def retirement_calculator(age)
    current_bank_account_of_child(age) * years_to_child_retire(age)
end



p retirement_calculator(30)
p retirement_calculator(50)