class CreateCalendar < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :anime
      t.string :day
      t.integer :user_id
    end
  end
end
