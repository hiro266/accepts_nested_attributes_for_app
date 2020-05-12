class AddSchoolRefToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_reference :teachers, :school, foreign_key: true, null: false
  end
end
