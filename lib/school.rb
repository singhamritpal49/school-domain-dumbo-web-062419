require 'pry'
class School
    attr_accessor :name, :roster


    def initialize(name)
        @name = name
        @roster = {}
        
    end


    def add_student(student_name,grade)
        @student_name = student_name
        # if the grade is already a key in roster
        if @roster[grade] 
            @roster[grade].push(@student_name)  
        else @roster[grade] = [] 
            @roster[grade].push(@student_name)
        end
        # push student to the array inside that key

        # if the grade isn't a key in the roster yet:
        # add that key to the roster and set an empty array
        ## push the student to that empty array
    end

    def grade(number)
         selected_students = @roster.select do |grade,student|
             grade == number
         end

        # selected_students = {}
        # @roster.each do |grade, students|
        #     if grade == number
        #         selected_students[grade] = students
        #     end
        # end # == 

        selected_students[number].each do |student_name|
            puts student_name
        end
    end

    def sort
        @roster.each do |grade,student|
            student.sort!
            binding.pry
        end
            
    end


end

