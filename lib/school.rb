# code here!
class School
    def initialize(school)
        @school = school
        @roster = {}
    end
    def roster
        @roster
    end
    def grade(grade)
        @roster[grade]
    end
    def add_student(student,grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end
    def sort
        sorted = @roster.map do |(key,value)|
            @roster[key] = value.sort
        end
        @roster
    end
end