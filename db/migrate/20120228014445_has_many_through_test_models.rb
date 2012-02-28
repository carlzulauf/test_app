class HasManyThroughTestModels < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string  :name
      t.integer :students_count, default: 0
      t.timestamps
    end

    create_table :students do |t|
      t.string  :name
      t.integer :teachers_count, default: 0
      t.timestamps
    end

    create_table :classrooms do |t|
      t.references :teacher
      t.references :student
      t.timestamps
    end
  end
end
