class CreateLabel < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string   :content
      t.string   :class
      t.timestamps
    end

    remove_column :merchants, :label
    add_column :merchants, :label_id, :integer
  end
end
