class School
  
def initialize(name,roster={})
  @name=name
  @roster=roster
end

def roster
@roster
end

def add_student(name,grade)
    keys = [ ]
   @roster.each{|key,value|
   keys.push(key)}
    if keys.include?(grade)
    @roster[grade].push(name)
    else
   @roster[grade] = []
    @roster[grade] << name
  end
end
def grade(grade)
  @roster[grade]
end

def sort
  @roster.each{|key,value|
   @roster[key]=value.sort}
@roster
end
end