class AddLcategoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :lcategory, foreign_key: true
  end
end
