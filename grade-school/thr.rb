class School

  def initialize
    @school = Hash.new { |grade, students| grade[students] = Array.new }
  end

  def to_hash
    school.sort.to_h
  end

  def add(student, grade_class)
    school[grade_class].push(student).sort!
  end

  def grade(grade_class)
    school[grade_class]
  end

  private
    attr_reader :school

end
