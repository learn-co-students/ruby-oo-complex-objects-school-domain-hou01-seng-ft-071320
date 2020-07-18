require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster 
  end

def add_student(name, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    result = []
    self.roster.each do |key, value|
       if grade == key
        result.push(value)
       end
    end
       return result.flatten!
    end 
  
    def sort
        self.roster.each do |key, value|
          value.sort!
        end
      end

end