class Classroom < ActiveRecord::Base
  belongs_to :student, :counter_cache => :teachers_count
  belongs_to :teacher, :counter_cache => :students_count
end
