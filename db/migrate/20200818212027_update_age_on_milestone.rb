class UpdateAgeOnMilestone < ActiveRecord::Migration[6.0]
  def change
    change_column :milestones, :age, :integer
  end
end
