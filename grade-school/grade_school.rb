class School
  VERSION = 1

  def initialize
    @students = {}
  end

  def to_h
    @students.to_a.sort.to_h
  end

  def add(name, grade)
    (@students[grade] ||= []) << name
    @students[grade].sort!
  end

  def grade(grade)
    @students.has_key?(grade) ? @students[grade] : []
  end
end
