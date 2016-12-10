class CreateJoinTableCourseDiscipline < ActiveRecord::Migration[5.0]
  def change
    create_join_table :courses, :disciplines do |t|
      # t.index [:course_id, :discipline_id]
      # t.index [:discipline_id, :course_id]
    end
  end
end
