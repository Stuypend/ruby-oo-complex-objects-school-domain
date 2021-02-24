require "pry"

class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade].push(name)
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do
      |grade, students|
      #binding.pry
      students.sort!
    end
    return @roster
  end
end

