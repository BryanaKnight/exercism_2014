require 'pry'
class School
  attr_reader :grade, :school, :school

  def initialize
    @school = Hash.new {|h,k| h[k] = []}
  end

  def to_hash
    hash = {}
    sort_grades.each do |a|
      hash[a[0]] = a[-1].sort
    end
    hash
  end

  def add(student, grade)
    school[grade] << student
    sort_students
  end

  def grade(number)
    school[number]
  end

  def sort_students
    school.map { |k,v| v.sort! }
  end

  def sort_grades
    school.sort_by {|k,v| k}
  end

end
