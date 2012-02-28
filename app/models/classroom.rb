class Classroom < ActiveRecord::Base
  belongs_to :student, :counter_cache => :teacherz_count
  belongs_to :teacher, :counter_cache => :studentz_count
end
