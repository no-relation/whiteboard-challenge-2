require 'pry'

def collect_multiples(limit=1000)
    (1...limit).to_a.select do |num|
        (num % 3 == 0) ||
        (num % 5 == 0)
    end
end

def sum_multiples(limit=1000)
    sum = 0
    collect_multiples(limit).each {|num| sum += num}
    sum
end
0