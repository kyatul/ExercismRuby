class School
  VERSION = 1
  def initialize
    @student_records = {}
  end

  def add(name, grade)
    if @student_records.key?(grade)
      students = @student_records[grade]
      students = students.push(name)
      students = students.sort
      @student_records[grade] = students
    else
      @student_records[grade] = [name]
    end
  end

  def to_h
    Hash[@student_records.sort]
  end

  def grade(student_grade)
    if @student_records.key?(student_grade)
      @student_records[student_grade]
    else
      []
    end
  end
end
