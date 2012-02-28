require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  test "truth" do
    assert true
  end
  test "maintains accurate counter caches" do
    teacher  = Teacher.create(name: "Miss Nice")
    student1 = Student.create(name: "Grumpy Smith")
    student2 = Student.create(name: "Bashful Andy")
    teacher.students << student1
    teacher.students << student2
    teacher.reload
    assert teacher.students_count == 2, "#{teacher.name} should have only 2 students but has #{teacher.students_count}"
  end
end