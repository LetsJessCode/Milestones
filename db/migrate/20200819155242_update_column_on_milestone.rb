class UpdateColumnOnMilestone < ActiveRecord::Migration[6.0]
  def change
    remove_column :milestones, :created_at, :date
    add_column :milestones, :published, :date
  end
end
