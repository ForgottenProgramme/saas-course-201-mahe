class Student
    def initialize(roll_no, name)
        @roll_no = roll_no
        @name = name
        @is_enrolled = false
    end
end 

class Course
  def initialize(name, students)
    @name = name
    @students = students
  end
end

saas = Course.new("SaaS 201", [
    Student.new(21, "mahe"),
    Student.new(34,"Ghazala")
])