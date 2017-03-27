class RemoveExampleFromActivities < ActiveRecord::Migration[5.0]
  def change
    remove_column :activities, :example, :text
  end
end
