class UpdateMilestoneIdOnKids < ActiveRecord::Migration[6.0]
  def change
    change_column :kids, :milestone_id, :integer, :null => true
  end
end
