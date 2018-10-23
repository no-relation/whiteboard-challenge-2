# Enter your object-oriented solution here!
class Multiples
    attr_accessor :limit

    def initialize(limit)
        self.limit = limit
    end

    def collect_multiples
        (1...self.limit).to_a.select do |num|
            (num % 3 == 0) ||
            (num % 5 == 0)
        end
    end

    def sum_multiples
        sum = 0
        self.collect_multiples.each {|num| sum += num}
        sum
    end
end