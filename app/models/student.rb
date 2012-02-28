class Student < ActiveRecord::Base
  has_many :classrooms
  has_many :teachers, :through => :classrooms
end
