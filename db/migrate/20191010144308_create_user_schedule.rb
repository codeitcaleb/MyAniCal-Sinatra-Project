class CreateUserSchedule < ActiveRecord::Migration
  def change
    create_table :user_schedules do |t|
      t.integer :anime_id
      t.integer :calendar_id
    end
  end
end
