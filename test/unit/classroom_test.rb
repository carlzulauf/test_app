require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  test "truth" do
    assert true
  end
  test "maintains accurate counter caches for `teacher.students << student`" do
    teacher  = Teacher.create(name: "Miss Nice")
    student1 = Student.create(name: "Grumpy Smith")
    student2 = Student.create(name: "Bashful Andy")
    teacher.students << student1
    teacher.students << student2
    teacher.reload; student1.reload
    assert teacher.students_count == 2, "#{teacher.name} should have only 2 students but has #{teacher.students_count}"
    assert student1.teachers_count == 1, "#{student1.name} should have 1 teacher but has #{student1.teachers_count}"
  end
  test "maintains accurate counter caches for `student.teachers << teacher`" do
    student  = Student.create(name: "Naughty Nick")
    teacher1 = Teacher.create(name: "Mister Rogers")
    teacher2 = Teacher.create(name: "Principle Skinner")
    student.teachers << teacher1
    student.teachers << teacher2
    student.reload; teacher1.reload
    assert student.teachers_count == 2, "#{student.name} should have 2 teachers, but has #{student.teachers_count}"
    assert teacher1.students_count == 1, "#{teacher1.name} should have 1 student but has #{teacher1.students_count}"
  end
end