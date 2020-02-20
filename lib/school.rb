# code here!
require 'pry'

class School

    attr_accessor :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = [name]
        else
            roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.each { |grade, student_array|
            sorted_hash[grade] = @roster[grade].sort
        }
        sorted_hash.sort.to_h
    end


end

# perry = School.new("Perry High School")
# perry.add_student("Laura", 12)
# binding.pry