class AddMcategoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :mcategory, foreign_key: true
  end
end
