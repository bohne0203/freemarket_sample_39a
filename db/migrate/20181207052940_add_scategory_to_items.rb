class AddScategoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :scategory, foreign_key: true
  end
end
