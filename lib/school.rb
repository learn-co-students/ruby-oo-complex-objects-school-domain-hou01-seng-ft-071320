class School 
    attr_accessor :model, :roster

    def initialize(model)
        @model = model
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]   #check hash to see if grade exists as key, it does here
            @roster[grade] << student_name
        else
            @roster[grade] = [] #false --> grade doesnt exist,create grade and have it equal to empty array
            @roster[grade] << student_name
        end
    end
    def grade(grade)
        return @roster[grade] #return the students in that grade 
    end 
    def sort
        @roster.map do |key,value|
            @roster[key] = value.sort
        end
        return @roster
    end
end 