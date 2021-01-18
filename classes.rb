class Student
    def initialize(roll_no, name)
        @roll_no = roll_no
        @name = name
        @is_enrolled = false
    end 

    #setter
    def enroll 
        @is_enrolled = true
    end

    #getter
    def is_enrolled?
        @is_enrolled
    end

    #getter
    def name
        @name
    end

    #getter
    def roll_no
        @roll_no
    end
end

enrolled_student = Student.new(29,"Mahe" ).enroll