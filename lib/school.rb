
class School

    attr_accessor :school_name, :school_roster 

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort 
        alphabetical = @roster.map do |(grade, student)|
            @roster[grade] =student.sort 
        end
        @roster 
    end

end
