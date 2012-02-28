class Teacher < ActiveRecord::Base
  has_many :classrooms
  has_many :students, :through => :classrooms
end
