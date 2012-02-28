class Classroom < ActiveRecord::Base
  belongs_to :student, :inverse_of => :teachers, :counter_cache => :teachers_count
  belongs_to :teacher, :inverse_of => :students, :counter_cache => :students_count
end
