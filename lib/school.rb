# code here!
require 'pry'

class School
    def initialize(name)
        @school_name = name
        @roster = {}
    end

    attr_reader :roster

    def add_student(name, grade)
        @student_name = name
        @grade = grade
        if @roster.include?(grade) == false
            @roster[grade] = []
        end
        @roster[grade].push(name)
    end

    def grade(grade_n)
        @roster[grade_n]
    end

    def sort
        @roster.each do |grade,name|
            @roster[grade] = name.sort
        end
    end

#   binding.pry   
end
