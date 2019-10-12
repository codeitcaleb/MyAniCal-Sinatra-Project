class CreateUserSchedule < ActiveRecord::Migration
  def change
    create_table :user_schedules do |t|
      t.integer :user_id
      t.integer :anime_id
    end
  end
end
