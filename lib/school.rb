require 'pry'
class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.has_key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort 
        self.roster.each do |student, grade|
            grade.sort!
        end
    end
end