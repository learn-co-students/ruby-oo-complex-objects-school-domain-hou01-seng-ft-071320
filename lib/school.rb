# code here!
require 'pry'

class School
    attr_accessor :student_name
    attr_reader :roster, :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.include?(grade).!
            @roster[grade] = []
        end
        @roster[grade] << student_name
        # binding.pry
    end

    def grade(grades)
        @roster[grades]
    end

    def sort
        @roster.each do |grades, student_names|
        # binding.pry
        @roster[grades] = student_names.sort
        end
    end




end
