# write a method #fibs which takes a number and
# returns that many members of the fibonacci sequence.
# Use iteration for this solution.

def fibs(n)
    return n if n <= 1
    fibs(n - 1) + fibs(n - 2)
end


# Now write another method #fibs_rec which solves 
# the same problem recursively. This can be done
# in just 3 lines (or 1 if you're crazy, but don't
# consider either of these lengths a requirement...
# just get it done.)

def fibs_rec(n)
    n <= 1 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end

puts fibs(10)
puts fibs_rec(10)