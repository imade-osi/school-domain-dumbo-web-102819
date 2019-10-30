require "pry"
class School
  
  attr_accessor :roster
  
  def initialize(school_name)
    @school = school_name 
    @roster = {}
  end 
  
  def add_student(student_name, student_num)
    # @roster[student_num] = []
     
     if @roster.has_key?(student_num)
        @roster[student_num] << student_name
     else 
       @roster[student_num] = []
       @roster[student_num] << student_name
     end 
     
  end 
  
  def grade(student_grade)
    @roster[student_grade]
  end 
  
  def sort 
    new_hash = {}
    
    @roster.keys.sort.each do |key| 
    new_hash[key] = @roster[key]
    end 
   @roster = new_hash
  end 
   
end 