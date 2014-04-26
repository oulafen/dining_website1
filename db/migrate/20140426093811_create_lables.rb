class CreateLables < ActiveRecord::Migration
  def change
    create_table :lables do |t|
      t.string :lable_name

      t.timestamps
    end
  end
end
