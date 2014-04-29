class CreateLabelClass < ActiveRecord::Migration
  def change
    create_table :label_classes do |t|
      t.string   :class
      t.timestamps
    end

  end
end
